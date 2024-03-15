# Load Testing
Here you can find load tests for:
* the [LDES Server](./server/README.md)
* the [LDIO Workbench](./workbench/README.md)

## Initialization
Before running the tests you need to create the required locations (with the correct permissions):

for the server:
```bash
mkdir -p ./server/tmp/epsg
chmod o+w ./server/tmp/epsg
```
for the workbench:
```bash
mkdir -p ./workbench/tmp/epsg
chmod o+w ./workbench/tmp/epsg
```
for the runner:
```bash
mkdir -p ./tests
chmod o+w ./tests
```

## Start Systems
To spin up the systems:
```bash
docker compose up -d
```

## Stop Systems
To bring down the systems:
```bash
docker compose down
```
