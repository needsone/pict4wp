#!/bin/bash

if [[ -z $1 ]]; then
  echo Please specify an absolute path
  exit 1
fi

find . -type f -name "*.jpg" -exec  ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.jpeg" -exec ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.png" -exec  ~/bin/squizzme.sh "{}" \;
find . -type f -name "*.JPG" -exec  ~/bin/squizzme.sh "{}" \;
