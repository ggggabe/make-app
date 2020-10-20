#!/bin/bash

if [ -z "$location" ]; then
  exit_message="No location provided. Where am I making it?..."
  source ./exit.sh
  echo "exiting"
  exit
fi

path=$location

echo "Creating project..."

# Set up filestructure
src=./src

source $src/structure.sh
