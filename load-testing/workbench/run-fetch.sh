#!/bin/bash
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.100mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.1000mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.10000mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.25mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.250mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.2500mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.50mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.500mpp.jmx ; done
clear && for((i=0;i<7;i++)) do curl -X POST "$TEST_SERVER_BASE/test?category=$CATEGORY" -H "x-api-key: $X_API_KEY" -H "Content-Type: application/xml" --data-binary @./fetch.5000mpp.jmx ; done
