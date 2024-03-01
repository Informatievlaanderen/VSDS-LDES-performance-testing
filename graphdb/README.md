# LDIO Repository Materialiser performance test

## Test Description

This test will test the performance of processing models to the RDF4J repository materialiser

The test will send 10,000 members to ldi-orchestrator, the orchestrator will process and send the members to the RDF4J
repository

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

- Pull the latest version of the ldi orchestrator

    ```bash
    docker pull ghcr.io/informatievlaanderen/ldi-orchestrator:latest
    docker pull ghcr.io/informatievlaanderen/ldes-workbench-nifi:latest
    ```

1. Prepare directory that will contain the results
    ```bash
    mkdir tests/results
    chmod 777 tests/results
    rm -rf tests/results/output
    rm -rf tests/results/report.jtl
    ```

2. Start test
   POST 10k members to LDIO to materialise to the RDF4J repository
    ```bash
    docker compose up 
    ```
   POST 10k members to NiFi to materialise to the RDF4J repository
    ```shell
    docker compose -f nifi-compose.yml up
   ```

3. End test
    ```bash
    docker compose down
    ```

4. Test results

To run the different tests, repeat step 1 -> 3 above and insert the results below.

- Test run:       February 23, 2023
- Docker image
- 
[//]: # (TODO add correct image tag)
    - ldi-orchestrator: ghcr.io/informatievlaanderen/ldi-orchestrator: 
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

# Results 
- `ldes/ldi-orchestrator:2.0.0-SNAPSHOT` \
Following error was counted 230 times, or for sample it has received:
```text
Non HTTP response code: java.net.SocketTimeoutException/Non HTTP response message: Read timed out
```