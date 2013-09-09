#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {filename} {title}"
  exit $E_BADARGS
fi

echo "---" > $1.md;
echo "layout: \"image\"" >> $1.md;
echo "title: \"$2\"" >> $1.md;
echo "imageName: \"$1\"" >> $1.md;
echo "---" >> $1.md;

mogrify -format jpg "images/$1.gif[0]"

