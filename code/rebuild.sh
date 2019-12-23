#!/bin/bash

# Usage ./code/rebuild.sh path/to/index.md
# Adds the html headers and footers to the markdown interpreted version of the file specified as the argument

name=$(echo "$1" | cut -f 1 -d '.')
out="$name.html"

cat code/header.html > $out
perl ~/Markdown.pl --html4tags $1 >> $out
cat code/footer.html >> $out
