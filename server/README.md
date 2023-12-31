# Server performance test
This test will test the performance of the following features:

- Ingest
    Test ingestion rate of the HTTP endpoint
- Fragmentation
    Test the rate of the actual fragmentations. The following fragmentations are included:
  - Geospatial
  - Hierarchical timebased
- Delete view
    We test if the geospatial view can be deleted in a reasonable time
- Delete eventstream
    We test if the collection with the remain timebased fragmentation can be deleted in a reasonable time

## Test Setup
> **Note**: if needed, copy the [environment file (.env)](./.env) to a personal file (e.g. `user.env`) and change the settings as needed. If you do, you need to add ` --env-file user.env` to each `docker compose` command.
> **_NOTE for Windows users:_**  Use [this tutorial](https://medium.com/@potatowagon/how-to-use-gui-apps-in-linux-docker-container-from-windows-host-485d3e1c64a3) to run JMeter in the docker-compose file.
> You can use DISPLAY=host.docker.internal:0.0 as environment variable to skip the ipconfig step.

# Steps:

Prerequisites:
    - Pull the latest version of the server
```bash
docker pull ghcr.io/informatievlaanderen/ldes-server:latest
```


1. Prepare directory that will contain the results
    ```bash
    mkdir tests/results
    chmod 777 tests/results
    rm -rf tests/results/output
    rm -rf tests/results/report.jtl
    ```

2. Start test

   Ingest 10k actual gipod members
    ```bash
    export JMETER_SCRIPT=gipod_10_000.jmx
    docker compose up
    ```

    Ingest 100k templated gipod members without fragmentations
   ```bash
   export JMETER_SCRIPT=ingest_100k_without_fragmentations.jmx
   docker compose up
    ```

    Ingest 100k templated gipod members with timebased fragmentation
   ```bash
   export JMETER_SCRIPT=ingest_100k_with_only_timebased.jmx
   docker compose up
    ```

    Ingest 100k templated gipod members with geolocation fragmentation
   ```bash
   export JMETER_SCRIPT=ingest_100k_with_only_geolocation.jmx
   docker compose up
    ```

    Ingest 100k templated gipod members with both geolocation and timebased fragmentation
   ```bash
   export JMETER_SCRIPT=ingest_100k_with_all_fragmentations.jmx
   docker compose up
    ```
   
    Ingest 1 million templated gipod members (e.g. one real member where only the id is changed using templating)
    ```bash
    export JMETER_SCRIPT=gipod_1_000_000.jmx
    docker compose up
    ```

3. End test
    ```bash
    docker compose down
    ```

4. Test results

To run the different tests, repeat step 1 -> 3 above and insert the results below.

- Test run:       September 7, 2023
- Docker image:   ldes/ldes-server:2.1.0-SNAPSHOT
- Resources:
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

| Test                                              | Ingested members | Ingest rate | Fragmentation rate                                                           | Test file                               |   
|---------------------------------------------------|------------------|-------------|------------------------------------------------------------------------------|-----------------------------------------|
| Without fragmentations                            | 100.000          | 888 mps     | 471 mps                                                                      | ingest_100k_without_fragmentations.jmx  |  
| With only timebased fragmentation                 | 100.000          | 866 mps     | 427 mps                                                                      | ingest_100k_with_only_timebased.jmx     |  
| With only geolocation fragmentation               | 100.000          | 829 mps     | 433 mps                                                                      | ingest_100k_with_only_geolocation.jmx   |  
| With both geolocation and timebased fragmentation | 100.000          | 845 mps     | GeospatialFragmentation 409 mps & HierarchicalTimeBasedFragmentation 382 mps | ingest_100k_with_all_fragmentations.jmx |  
*mps = members per second