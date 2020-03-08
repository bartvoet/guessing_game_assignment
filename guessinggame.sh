#!/bin/bash

number_of_files=$(ls -1 | wc -l)

function ask_for_number_of_files {
    echo "How many files are located in the current directory?"
    echo "$(pwd)"
    echo -n "Please enter your guess: "
    read guess
}

ask_for_number_of_files

while [[ $guess -ne number_of_files ]]
do
    echo
    if [[ $guess -gt number_of_files ]] 
    then
        echo "$guess is > actual number of files in $(pwd)"
        echo "Guess lower"
    else
        echo "$guess is < actual number of files in $(pwd)"
        echo "Guess higher"
    fi
    echo "Please try again... "
    echo
    ask_for_number_of_files
done

echo "Congratulations, you've guessed the correct number of files of $guess"
echo "End of programm"
