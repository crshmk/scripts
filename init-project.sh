#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "No project name given"
    exit 1
fi

if [ -d "~/dev/$1" ]; then
   echo "project already exists. exiting."
   exit 1
fi


echo "creating new react project $1"

git clone git@github.com:crshmk/webpack-react.git ~/dev/$1

cd ~/dev/$1


echo "installing packages"

npm i 

nvim .
