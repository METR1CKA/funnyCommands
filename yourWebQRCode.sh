#!/bin/bash

help() {
  echo "Usage:"
  echo
  echo "     ./yourWebQRCode.sh [options]"
  echo
  echo "Options:"
  echo
  echo "     -h, --help           Print this help information."
  echo "         --url  <url>     Url argument to generate qrcode."
}

if [[ "$#" == "0" || "$1" == "-h" || "$1" == "--help" ]]
then
  help
  exit 0
fi

if [[ "$1" == "--url" && -z "$2" ]]
then
  help
  echo
  echo "Error: No value entered for <url>"
  exit 1
fi

curl qrcode.show/"$2"

