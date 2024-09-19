# Server Tests

```bash
CATEGORY="Server%20(3.3.0)"
```

```bash
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./ingest.01T.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./ingest.02T.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./ingest.04T.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fragment.01V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fragment.02V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fragment.04V.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.01T.01V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.01T.02V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.01T.04V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.02T.01V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.02T.02V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.02T.04V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.04T.01V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.04T.02V.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./both.04T.04V.jmx
```

```bash
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.10mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.100mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.250mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.500mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.1000mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.2500mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.5000mpp.jmx
curl -X POST "http://localhost:9000/test?category=$CATEGORY" -H "Content-Type: application/xml" --data-binary @./fetch.10000mpp.jmx
```
