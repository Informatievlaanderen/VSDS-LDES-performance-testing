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

> **_NOTE for Windows users:_**  Use [this tutorial](https://medium.com/@potatowagon/how-to-use-gui-apps-in-linux-docker-container-from-windows-host-485d3e1c64a3) to run JMeter in the docker-compose file.
> You can use DISPLAY=host.docker.internal:0.0 as environment variable to skip the ipconfig step.
# Steps:

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
