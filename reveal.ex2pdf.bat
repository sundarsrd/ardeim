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

docker run --rm -t -v "%1:/slides" -v "%2" astefanutti/decktape "%3" "%3.pdf"

rem # reveal.ex2pdf.bat %cd% %home%:%home% index.html
rem Working - # reveal.ex2pdf.bat %cd% %cd% index.html 
rem Working - # docker run --rm -t -v %cd%:/slides astefanutti/decktape index.html slides.pdf