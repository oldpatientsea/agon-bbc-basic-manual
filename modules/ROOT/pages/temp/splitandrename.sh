#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

csplit -s "$input_file" '/^== /' '{*}'
head -n1 xx* | grep -o [A-Z]*
for file in xx*; do
    newName=$(head -n1 $file | grep -o '[A-Z]*' | head -n1)
    mv $file $newName.adoc
done
rm -rf xx*

