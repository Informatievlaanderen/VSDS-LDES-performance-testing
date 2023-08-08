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
    ```bash
    docker compose up
    ```

3. End test
    ```bash
    docker compose down
    ```
