# Server Tests
TODO: describe tests

### Run The Test
To run the test:
```bash
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./ingest.01T.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./ingest.02T.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./ingest.04T.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./fragment.01V.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./fragment.02V.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./fragment.04V.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=Server%20(3.3.0)" -H "Content-Type: application/xml" --data-binary @./fetch.250mpp.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./fragment.01V.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./fragment.02V.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./fragment.04V.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./ingest.01T.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./ingest.02T.jmx
curl -X POST "http://localhost:9000/test?category=Server%20(3.4.0)" -H "Content-Type: application/xml" --data-binary @./ingest.04T.jmx
```
