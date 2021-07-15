#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "Usage: ./build.sh INPUT_URL OUTPUT_LOCATION"
    exit 1
fi

echo "GEOADMIN BUILD STARTING"
echo "-----------------------"
echo "Here's the plan:"
echo "    1. Download osm.pbf region file at ${1} (will be saved to /tmp/map.osm.pbf)"
echo "    2. Filter for admin regions 1-6"
echo "    3. Output to file ${2}"

echo "Starting download..."
curl ${1} > /tmp/map.osm.pbf

echo "Download complete. Now processing..."
osmium tags-filter /tmp/map.osm.pbf admin_level=1 admin_level=2 admin_level=3 admin_level=4 admin_level=5 admin_level=6 -o $2

echo "Processing complete. Cleaning up..."
rm /tmp/map.osm.pbf

echo "Done!"