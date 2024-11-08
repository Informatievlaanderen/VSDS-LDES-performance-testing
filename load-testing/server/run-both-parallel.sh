#!/bin/bash
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.01T.01V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.01T.02V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.01T.04V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.02T.01V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.02T.02V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.02T.04V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.04T.01V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.04T.02V.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./both.04T.04V.jmx
