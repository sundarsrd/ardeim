# (Ar)chitecture, (De)sign, (Im)plementation - Learn System Design by Doing

This is an effort to build awareness about system design, using a real life use case,
narrated in the form of toons.

Note:  
V1 is at its nacent stages.  
Curation, Credits is WIP.  

## To run a local installation & changes:

npm install && bower install
grunt serve

## Dependencies

Node
Bower
Grunt
Reveal.JS - https://github.com/hakimel/reveal.js
Stripthis - www.kesiev.com/stripthis/

## To export prez. to pdf using decktape

follow instructions from https://github.com/astefanutti/decktape

1. directly calling decktape (after a "grunt serve")
   decktape -s 1280x720 automatic http://localhost:8000/ ardeim.22.09.2017.2.pdf

2. using the docker version of decktape (perfect output with clear alignments & themes)
   ./reveal.ex2pdf.sh "$PWD" "$HOME:$HOME" "index.html"

3. using pdf export from the browser (easiest, but could have blank slides in between)
   http://localhost:8000/?print-pdf&showNotes=true
   http://localhost:8000/?print-pdf
