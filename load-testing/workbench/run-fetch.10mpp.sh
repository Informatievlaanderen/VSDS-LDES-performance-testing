#!/bin/bash
curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.10mpp.jmx