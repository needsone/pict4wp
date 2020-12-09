#!/bin/bash

wsize=1280
lsize=1280
quality=85

if [[ -z "$1" ]]; then
  echo Please specify an image
  exit 1
fi

cwsize=`identify -format %w "$1"`
if [ "${cwsize}" -gt "${wsize}" ]
       then
         mogrify -resize ${wsize}x "$1"
fi

clsize=`identify -format %l "$1"`
if [ "${cwsize}" -gt "${lsize}" ]
       then
         mogrify -resize x${lsize} "$1"
fi
#mogrify -strip -quality $quality "$1"
