#!/bin/sh

echo var allImages = {

for i in `find . -type f -name "*.png"`
do
    filename=$(basename -- "$i")
    filename="${filename%.*}"
    base=`base64 $i -w 0`
    echo "  '$filename': 'data:image/png;base64,$base',"
done

base=`base64 "../template.png" -w 0`
echo "  'template': 'data:image/png;base64,$base'"

echo }
echo

