#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo "Date and time" >> README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	echo "Number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
