#!/bin/bash
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.S-01T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.S-02T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.S-04T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.S-08T.jmx

curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.M-01T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.M-02T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.M-04T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.M-08T.jmx

curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.L-01T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.L-02T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.L-04T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.throughput.L-08T.jmx
