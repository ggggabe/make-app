#!/bin/bash

cd $path

npm init -y
npm install express --save
cp -r $templates/api/ .

cd -
