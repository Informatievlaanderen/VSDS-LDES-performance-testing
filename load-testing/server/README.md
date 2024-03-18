# Server Tests
TODO: describe tests

### Run The Test
To run the test:
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./throughput.jmx
```
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./duration.jmx
```
```bash
curl -X POST "http://localhost:9000?category=Server" -H "Content-Type: application/xml" --data-binary @./fetch.jmx
```
