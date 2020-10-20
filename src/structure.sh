#!/bin/bash
echo "Creating project structure..."

mkdir -p $path
git init $path

templates=./boilerplate

cp -r $templates/root $path
mkdir $path/public
mkdir $path/src

case "$TYPE" in
  api) source $src/api.sh;;
esac
