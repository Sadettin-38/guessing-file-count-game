
function warn {
[[ $1 -gt $2 ]] && echo "too high !" || echo "too low !"
echo "guess again."
}

touch $(eval echo {01..$((1 + $RANDOM % 100))})
c=$(ls -1 | wc -l)
echo "Guess: how many files are in the current directory ?"

while true
    do
    read i
    if [[ $i -eq $c ]]
        then 
        break
        fi
        warn $i $c
    done

echo "you are right, $c files exist in current directory."
ls
rm *[1-9]*
