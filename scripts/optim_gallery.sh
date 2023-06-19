#!/bin/bash
# Dependancies
# - img-optimize - https://virtubox.github.io/img-optimize/
# - imagemagick
# - jpegoptim
# - optipng

FOLDER=$1

# max width
WIDTH=1920

# max height
HEIGHT=1920

#resize png or jpg to either height or width, keeps proportions using imagemagick
if [ -n "${FOLDER}" ]; then
    find ${FOLDER} -iname '*.jpg'  -exec convert \{\} -verbose -resize "$WIDTH"x"$HEIGHT" \> \{\} \;
    img-optimize --std --webp --path ${FOLDER}
fi
