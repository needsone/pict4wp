#!/bin/bash

## In the current folder convert all images :
## resize to 1024 width if width is more than 1024
## resize to 768 lenght if lenght is more than 768
## reduce a bit the quality
##

if [[ -z $1 ]]; then
  echo Please specify an absolute path
  exit 1
fi

find . -type f -name "*.jpg" -exec  ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.jpeg" -exec ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.png" -exec  ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.JPG" -exec  ~/bin/squizzme.sh "{}" \;
