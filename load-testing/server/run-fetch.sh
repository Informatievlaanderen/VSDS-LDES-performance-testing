#!/bin/bash
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.10mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.100mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.250mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.500mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.1000mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.2500mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.5000mpp.jmx
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.10000mpp.jmx
