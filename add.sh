#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {filename} {title}"
  echo ""
  echo "      {filename} is the name of a gif in the images folder"
  echo "                 (without .gif on the end)"
  echo ""
  echo "      {title}    will be the page title"
  exit $E_BADARGS
fi

#get current date and time
dateTime=$(date "+%Y-%m-%d %H:%M:%S")

echo "---" > $1.md;
echo "layout: \"image\"" >> $1.md;
echo "title: \"$2\"" >> $1.md;
echo "imageName: \"$1\"" >> $1.md;
echo "date: $dateTime" >> $1.md;
echo "---" >> $1.md;

mogrify -format jpg "images/$1.gif[0]"