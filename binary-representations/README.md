# LDES server RDF format performance testing

## Test Description

This test will test the performance of parsing RDF models via different RDF formats, especially binary data formats.

The test will send 10,000 members to ldi-orchestrator, the orchestrator will parse the member to the RDF format that is
set via an environment variable.

## Test Setup

> **Note**: if needed, copy the [environment file (.env)](./.env) to a personal file (e.g. `user.env`) and change the
> settings as needed. If you do, you need to add ` --env-file user.env` to each `docker compose` command.
> **_NOTE for Windows users:_**
>
Use [this tutorial](https://medium.com/@potatowagon/how-to-use-gui-apps-in-linux-docker-container-from-windows-host-485d3e1c64a3)
> to run JMeter in the docker-compose file.
> You can use DISPLAY=host.docker.internal:0.0 as environment variable to skip the ipconfig step.

# Steps:

Prerequisites:

- Pull the latest version of the server

    ```bash
    docker pull ghcr.io/informatievlaanderen/ldes-server:latest
    docker pull ghcr.io/informatievlaanderen/ldi-orchestrator:latest
    ```

1. Prepare directory that will contain the results
    ```bash
    mkdir tests/results
    chmod 777 tests/results
    rm -rf tests/results/output
    rm -rf tests/results/report.jtl
    ```

2. Start test

   POST 100k members to LDIO via an RDF format of your choice
    ```bash
    export CONTENT_TYPE=<RDF-FORMAT-OF-YOUR-CHOICE>
    docker compose up
    ```

   Some examples:
    - POST 100k actual gipod members to LDIO via turtle
      ```bash
      export CONTENT_TYPE=text/turtle
      docker compose up
      ```

    - POST 100k actual gipod members to LDIO via n-quads
       ```bash
      export CONTENT_TYPE=application/n-quads
      docker compose up
       ```

    - POST 100k actual gipod members to LDIO via json-ld
       ```bash
      export CONTENT_TYPE=application/ld+json
      docker compose up
       ```

    - POST 100k actual gipod members to LDIO via RDF Protobuf
      ```bash
      export CONTENT_TYPE=application/rdf+protobuf
      docker compose up
       ```

    - POST 100k actual gipod members to LDIO via RDF Thrift
       ```bash
      export CONTENT_TYPE=application/rdf+thrift
      docker compose up
       ```

3. End test
    ```bash
    docker compose down
    ```

4. Test results

To run the different tests, repeat step 1 -> 3 above and insert the results below.

- Test run:       December 28, 2023
- Docker image
    - ldes-server: ghcr.io/informatievlaanderen/ldes-server:20231228094401
    - ldi-orchestrator: ghcr.io/informatievlaanderen/ldi-orchestrator:20231227095645
- Resources for both the orchestrator as server:
    ```yaml
        deploy:
          resources:
            limits:
              cpus: '4'
              memory: '2GB'
            reservations:
              cpus: '2'
              memory: '1GB'
    ```

| RDF Format               | Members successfully posted | Average duration per member (ms) |   
|--------------------------|-----------------------------|----------------------------------|
| text/turtle              | 7,845                       | 54.84                            |  
| application/n-quads      | 8,685                       | 48.55                            |  
| application/ld+json      | 5,718                       | 75.84                            |  
| application/rdf+protobuf | 9,906                       | 39.64                            |  
| application/rdf+thrift   | 8,887                       | 47.35                            |