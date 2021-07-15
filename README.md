# GeoAdmin
OpenStreetMap planet data, but with only administrative regions.

Perhaps you want to run a Nominatim instance with low-resolution administrative lookups. This repository lets you do that.

## Usage

A full planet export requires a quite powerful machine. To run an export yourself, perform these steps on a Debian/Ubuntu machine:

1. Run `./setup.sh` to create the output folder and ensure that the dependencies (i.e., Osmium and Curl) are installed.

2. Run `./build.sh INPUT_URL OUTPUT_LOCATION` to run a full export. For example, to perform an export for California, you would run `/build.sh https://download.geofabrik.de/north-america/us/california-latest.osm.pbf output/california_admin.osm.pbf`.

## License

Please note that OpenStreetMap® is open data, licensed under the Open Data Commons Open Database License (ODbL) by the OpenStreetMap Foundation (OSMF). The code in this repository is licensed under the Apache 2.0 license.
