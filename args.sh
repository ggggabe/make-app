#!/usr/bin/env bash

function usage() {
  echo "Usage: $0 [-i] [-v*] [-h] [-t <api | app | static>] <word>"
}

VERBOSE=
INTERACTIVE=
EXPRESS=
TYPE="api"

while getopts "ivht:" opt
do
  case "$opt" in
  i) INTERACTIVE=1;;
  v) VERBOSE=1;;
  t) TYPE="$OPTARG";;
  h) usage; exit 0;;
  esac
done

shift $(( OPTIND - 1 ))

location=${1?$( usage )}

if [[ -n "$INTERACTIVE" ]]; then
  echo "Are you sure you want to party?"
  read -r -p"[yn] " answer
  if [[ "$answer" != y ]]; then
    echo "Exiting."
    exit 0
  fi
fi
