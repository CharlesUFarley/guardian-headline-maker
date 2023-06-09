#!/bin/sh

#if ! command -v mogrify &> /dev/null
#then
#    echo "mogrify (imagemagick) could not be found"
#    exit
#fi

mogrify -strip *.png
