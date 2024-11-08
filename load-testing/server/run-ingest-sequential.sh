#!/bin/bash
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.01T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.02T.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./ingest.04T.jmx
