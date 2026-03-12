#!/bin/sh

echo var allImages = {

for i in `find . -type f -name "*.webp"`
do
    filename=$(basename -- "$i")
    filename="${filename%.*}"
    filename=$(basename -- "$filename")
    filename="${filename%.*}"
    base=`base64 $i -w 0`
    echo "  '$filename': 'data:image/webp;base64,$base',"
done

#base=`base64 "../template.png" -w 0`
#echo "  'template': 'data:image/png;base64,$base'"
echo "  'template':''"


echo }
echo

