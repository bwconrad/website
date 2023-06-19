#!/bin/bash
# Dependancies
# - img-optimize - https://virtubox.github.io/img-optimize/
# - imagemagick
# - jpegoptim
# - optipng

FOLDER=$1

# max width
WIDTH=600

# max height
HEIGHT=800

#resize png or jpg to either height or width, keeps proportions using imagemagick
if [ -n "${FOLDER}" ]; then
    find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize "$WIDTH"x"$HEIGHT" \> \{} \;
    img-optimize --std --webp --path ${FOLDER}
fi
