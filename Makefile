all: README.md

README.md:guessinggame.sh
	echo -n "# Project: Guessing Game" > README.md
	echo "\n" >> README.md
	echo -n "Date of creation is: "	>> README.md
	date >> README.md
	echo -n "The number of lines of code contained in guessinggame.sh is "  >> README.md
	wc -l guessinggame.sh  | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
