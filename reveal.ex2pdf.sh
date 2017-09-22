#!/bin/sh
# purpose:
# create a PDF from the html presentations (using decktape.js over phantomjs - running in docker)
# 
# usage instructions
# ./reveal.export.2.pdf.sh "`pwd`" "/Users/sivaramasundar:/Users/sivaramasundar" "2017.08/2017.08.22.i.html"
# ./reveal.export.2.pdf.sh "`pwd`" "~:/Users/sivaramasundar" "2017.08/2017.08.22.i.html"
# ./reveal.export.2.pdf.sh "$PWD" "$HOME:$HOME" "2017.08/2017.08.22.i.html"
#
# params
# $1 - mount #1 - pwd mapped into the as slides
# $2 - mount #2 - home directory mapped into the container
# $3 - source html file to be converted 

docker run --rm -v "$1:/slides" -v "$2" astefanutti/decktape "$3" "$3.pdf"
