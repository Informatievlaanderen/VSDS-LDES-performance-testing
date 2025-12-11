# Jmeter performance testing


> ⚠️ **Warning!**
>
> **This page has been archived. All documentation, source code, Docker images, and release information for the LDES software have been moved to the open-source project at [openldes.org](https://openldes.org).**
>
> **This page was originally created for the completed VSDS project, funded under the European Recovery and Resilience Facility (RRF) as part of NextGenerationEU and aligned with EU digital transformation strategies.**
>
> You can find the new source code at: https://github.com/orgs/OpenLDES/repositories 

- [LDES Server](./server)
    - Ensures that the server can handle significant load and its performance doesn't unknowingly degrade.
- [LDIO](./ldio)
    - Not yet implemented
- [LDES Server + LDIO](./ldio-with-server)
    - Not yet implemented
- [Binary Representation (LDIO + LDES Server)](./binary-representations)
    - Verifying whether binary data is faster parsed than string data
- [Performance of the Repository Materialiser](./graphdb)
    - Verifying the performance improvement of using batch-size for storing members in a triples store