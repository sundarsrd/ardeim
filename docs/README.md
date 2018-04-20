# (Ar)chitecture, (De)sign, (Im)plementation - Learn System Design by Doing

This is an effort to build awareness about system design, using a real life use case,
narrated in the form of toons.

Note:  
- V1 is at its nacent stages.    
- V5 is curated, added credits, cleaner content & re-structured post reviews.  
- Hosted directly under github pages (docs folder under master branch), accesible @ https://sundarsrd.github.io/ardeim/ardeim.v5.html  

## To run a local installation & changes:

`npm install && bower install`  
`grunt serve`  

## Dependencies

```Node
Bower
Grunt
Reveal.JS - https://github.com/hakimel/reveal.js
Stripthis - www.kesiev.com/stripthis/
```

## To export prez. to pdf using decktape

Follow instructions from https://github.com/astefanutti/decktape

1. Directly calling decktape (after a "grunt serve")  
  `decktape -s 1280x720 automatic http://localhost:8000/ ardeim.22.09.2017.2.pdf`

2. Using the docker version of decktape (perfect output with clear alignments & themes)  
  Note: 20.04.2018 - decktape v 2.7.0 docker image works well - the latest version of the docker image fails in creating the pdf  
  `./reveal.ex2pdf.sh "$PWD" "$HOME:$HOME" "index.html"`  
  ` `    
  `docker run --name revealdt -v "%cd%:/slides" astefanutti/decktape:2.7.0 automatic "https://sundarsrd.github.io/ardeim/ardeim.v5.html" "ardeim.v5.pdf"`  
  ` `  
  `docker run --name revealdt --rm -t -v "%cd%:/slides" astefanutti/decktape:2.7.0 -s 1280x720 automatic "https://sundarsrd.github.io/ardeim/ardeim.v5.html" "ardeim.v5.pdf"`   

3. Using pdf export from the browser (easiest, but could have blank slides in between)  
  http://localhost:8000/?print-pdf&showNotes=true  
  http://localhost:8000/?print-pdf  
