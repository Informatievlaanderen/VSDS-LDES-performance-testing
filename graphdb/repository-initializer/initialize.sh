#!/bin/sh
apt-get update && apt-get install curl -y && apt-get clean
curl -X PUT http://graphdb:8080/rdf4j-server/repositories/test -H "Content-Type: text/turtle" -d "@/initializer/repo-definition.ttl"