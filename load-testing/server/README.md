# Server Tests

```bash
cd ./server
export CATEGORY="Server%20(3.4.0)"
export TEST_SERVER_BASE="http://localhost:9000"
export X_API_KEY=
```

```bash
./run-ingest-sequential.sh
```

```bash
./run-fragment-sequential.sh
```

```bash
./run-both-parallel.sh
```

```bash
./run-fetch.sh
```

```bash
curl -X DELETE -H "x-api-key: $X_API_KEY" "$TEST_SERVER_BASE/test/$TEST_ID"
```

```bash
curl -X DELETE -H "x-api-key: $X_API_KEY" "$TEST_SERVER_BASE/test/$TEST_ID?confirm=true"
```

```bash
curl -X POST -H "x-api-key: $X_API_KEY" "$TEST_SERVER_BASE/status/resume"
```