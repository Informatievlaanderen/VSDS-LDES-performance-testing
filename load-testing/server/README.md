# Server Tests

```bash
cd ./server
export CATEGORY="Server%20(3.6.0)"
export TEST_SERVER_BASE="http://localhost:9000"
export X_API_KEY=
```

```bash
clear && for((i=0;i<7;i++)) do ./run-ingest-sequential.sh ; done
```

```bash
clear && for((i=0;i<7;i++)) do ./run-fragment-sequential.sh ; done
```

```bash
clear && for((i=0;i<7;i++)) do ./run-both-parallel.sh ; done
```

```bash
clear && for((i=0;i<7;i++)) do ./run-fetch.sh ; done
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