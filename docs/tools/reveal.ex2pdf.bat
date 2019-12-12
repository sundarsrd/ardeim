rem #!/bin/sh
rem # purpose:
rem # create a PDF from the html presentations (using decktape.js over phantomjs - running in docker)
rem # 
rem # usage instructions
rem # ./reveal.ex2pdf.sh "`pwd`" "/Users/sivaramasundar:/Users/sivaramasundar" "2017.08/2017.08.22.i.html"
rem # ./reveal.ex2pdf.sh "`pwd`" "~:/Users/sivaramasundar" "2017.08/2017.08.22.i.html"
rem # ./reveal.ex2pdf.sh "$PWD" "$HOME:$HOME" "2017.08/2017.08.22.i.html"
rem #
rem # params
rem # $1 - mount #1 - pwd mapped into the as slides
rem # $2 - mount #2 - home directory mapped into the container
rem # $3 - source html file to be converted 

docker run --rm -t -v "%1:/slides" -v "%2" astefanutti/decktape -s 1280x720 "%3" "%3.pdf"

rem # reveal.ex2pdf.bat %cd% %home%:%home% index.html
rem # reveal.ex2pdf.bat %cd% %cd% index.html
rem # run directly from the docker container
rem # docker run --rm -t -v %cd%:/slides astefanutti/decktape index.html slides.pdf
rem # docker run --name revealdt --net=host -v "%cd%:/slides" astefanutti/decktape reveal "http://localhost:5500/git/...-digital-advantage/" "index.slides"
rem # docker run --name revealdt -v "%cd%:/slides" astefanutti/decktape reveal "https://sundarsrd.github.io/ardeim/ardeim.v5.html" "ardeim.v5.pdf"

rem # 20.04.2018 - decktape v 2.7.0 docker image works well - the latest version of the docker image fails in creating the pdf 
rem # docker run --name revealdt -v "%cd%:/slides" astefanutti/decktape:2.7.0 -s 1280x720 reveal "https://sundarsrd.github.io/ardeim/ardeim.v5.html" "ardeim.v5.pdf"
rem # docker run --name revealdt --rm -t -v "%cd%:/slides" astefanutti/decktape:2.7.0 -s 1280x720 reveal "https://sundarsrd.github.io/ardeim/ardeim.v5.html" "ardeim.v5.pdf"
