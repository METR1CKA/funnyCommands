#!/bin/bash

help() {
  echo "Usage:"
  echo
  echo "     ./learnProgrammingLanguage.sh [options]"
  echo
  echo "Options:"
  echo
  echo "     -h, --help                      Print this help information."
  echo "         --lang  <lang>  <--learn?>  To define the programming language."
  echo "                --learn              To define if you learn language."
}

if [ "$#" == "0" ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
  help
  exit 0
fi

if [ "$1" == "--lang" ] && [ -z "$2" ]
then
  help
  echo
  echo "Error: No value entered for <lang>"
  exit 1
fi

if [ -z "$3" ]
then
  curl cheat.sh/"$2"
  exit 0
fi

if [ "$3" == "--learn" ]
then
  curl cheat.sh/"$2"/:learn
  exit 0
fi

if [ "$3" != "--learn" ]
then
  help
  echo
  echo "Error: --learn is misspelled"
  exit 1
fi
