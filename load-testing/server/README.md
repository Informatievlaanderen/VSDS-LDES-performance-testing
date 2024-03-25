# Server Tests
TODO: describe tests

### Run The Test
To run the test:
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./ingest.speed.08T.jmx
```
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./ingest.duration.jmx
```
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./fetch.250mpp.jmx
```
