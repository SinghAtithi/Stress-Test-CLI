#!/bin/bash

# Variables
bold=$(tput bold)
normal=$(tput sgr0)
red='\033[0;31m'
green='\033[0;32m'
clear='\033[0m'
f=0

# Function to display usage
usage() {
    echo "Usage: $0 -g <generator_file> -c <correct_code_file> -w <wrong_code_file>"
    exit 1
}

# Check if enough arguments are provided
if [ "$#" -ne 6 ]; then
    usage
fi

# Parse command line arguments
while getopts ":g:c:w:" opt; do
    case $opt in
        g) generator_file="$OPTARG"
        ;;
        c) correct_file="$OPTARG"
        ;;
        w) wrong_file="$OPTARG"
        ;;
        \?) echo "Invalid option -$OPTARG" >&2
            usage
        ;;
    esac
done

# Check if mandatory arguments are provided
if [ -z "$generator_file" ] || [ -z "$correct_file" ] || [ -z "$wrong_file" ]; then
    echo "All flags -g, -c, -w are required."
    usage
fi

# Compile generator.cpp
g++ -o program "$generator_file"

# Compile correctCode.cpp
g++ -o correctProgram "$correct_file"

# Compile wrongCode.cpp
g++ -o wrongProgram "$wrong_file"

for i in {1..1000}
do
    # Generate the test case
    ./program > testCase.txt

    # Run the correct program
    ./correctProgram < testCase.txt > correctOutput.txt

    # Run the wrong program
    ./wrongProgram < testCase.txt > wrongOutput.txt

    # Compare the outputs
    if cmp --silent -- "correctOutput.txt" "wrongOutput.txt"; then
        printf "${bold}${green}[${i}] Test passed: ${normal}Outputs Matched\n"
    else
        printf "${bold}${red}[${i}] Test failed: ${normal}Outputs Did Not Match\n"
        printf "\nTest case:\n"
        cat testCase.txt
        printf "\nExpected output:\n"
        cat correctOutput.txt
        printf "\nActual output:\n"
        cat wrongOutput.txt
        break
    fi
done
