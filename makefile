all::
	touch README.md
	echo "Guessing Game Project" > README.md
	echo "" >> README.md
	echo $(shell date "+%d/%m/%Y %H:%M:%S") >> README.md
	echo "" >> README.md
	echo $(shell wc -l guessinggame.sh) >> README.md
clean:
	rm README.md
