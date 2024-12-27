# Workbench Tests
The [LDIO workbench](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/) is a custom, lightweight system allowing to create data transformation pipelines. We need to understand the limits of the system in order to advise on applicability and deployment sizing. Therefore we provide a number of ([jmeter](https://jmeter.apache.org/)) tests.

## Workbench Throughput Tests
These tests measure the rate at which the following LDIO pipeline can output data given different sized input messages. In addition it tests how much load can be put on the workbench and how that results in rate degradation.

This test measure the output rate possible for converting a [GeoJSON](https://geojson.org/) message containing GeoJSON features into a number of object versions according to the [OSLO traffic model](https://data.vlaanderen.be/doc/applicatieprofiel/verkeersmetingen/) (also available in English [here](https://data.vlaanderen.be/doc/applicatieprofiel/verkeersmetingen/index_en.html)) for ingestion by a [LDES server](https://informatievlaanderen.github.io/VSDS-LDESServer4J/).

The base pipeline which we use consists of the following components:
* [Ldio:HttpIn](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/ldio-inputs/ldio-http-in) accepting GeoJSON messages
* [Ldio:JsonToLdAdapter](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/ldio-adapters/ldio-json-to-json-ld) transforming GeoJSON (non-linked data) to [JSON-LD](https://json-ld.org/) (linked data)
* [Ldio:GeoJsonToWktTransformer](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/ldio-transformers/ldio-geojson-to-wkt) transforming GeoJSON constuctions to [WKT](https://libgeos.org/specifications/wkt/) (also see [here](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/core/ldi-transformers/geojson-to-wkt))
* [Ldio:SparqlConstructTransformer](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/ldio-transformers/ldio-sparql-construct) to transform each GeoJSON feature into the OSLO traffic model
* [Ldio:VersionObjectCreator](https://informatievlaanderen.github.io/VSDS-Linked-Data-Interactions/ldio/ldio-transformers/ldio-version-object-creator) creating version objects
* Ldio:NoopOut dropping the version objects

During initial runs of this test we noticed that the Ldio:SparqlConstructTransformer performance was inadequate converting all GeoJSON features as a whole to their OSLO traffic model. Therefore we revised that test adding another Ldio:SparqlConstructTransformer component immediately before the existing one to first split the triple set per GeoJSON feature and handling each feature on its own, resulting in this [test](./throughput.jmx).

Our pipeline now looks like:
* Ldio:HttpIn accepting GeoJSON messages
* Ldio:JsonToLdAdapter transforming GeoJSON (non-linked data) to JSON-LD (linked data)
* Ldio:GeoJsonToWktTransformer transforming GeoJSON constuctions to WKT
* **Ldio:SparqlConstructTransformer splitting triple set according to GeoJSON feature**
* Ldio:SparqlConstructTransformer to transform each GeoJSON feature into an OSLO traffic model
* Ldio:VersionObjectCreator creating version objects that can be ingested by a LDES server
* Ldio:NoopOut dropping the version objects

### Run The Test
Several tests are provided to verify the effect of a S(mall), M(edium) and L(arge) message as well as feeding the pipeline in sequence using one thread (01T) or in parallel using multiple threads (02T, 04T or 08T).

To run the large message test in parallel using 8 threads:
```bash
curl -X POST "http://localhost:9000/test?category=Workbench" -H "Content-Type: application/xml" --data-binary @./throughput.L-08T.jmx
```

> TODO from here -------------------------------------

```bash
export CATEGORY="Workbench%20(2.12.0)"
export TEST_SERVER_BASE="http://localhost:9000"
export X_API_KEY=
```

```bash
./run-fetch.sh
```

```bash
clear && for((i=0;i<7;i++)) do ./run-throughput.sh ; done
```
