#!/bin/sh

echo "Stripping metadata"
./strip_metadata.sh
echo "building js png"
./build_image_js.sh   > images.js
echo "converting to webp"
find . -name "*.png" -exec cwebp {} -o {}.webp \;
echo "building js webp"
./build_image_webp_js.sh   > images.webp.js
