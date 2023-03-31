#!/bin/bash

PROJECT=$1
CONFIG="${PROJECT}.env"

source $CONFIG

echo "copying ${SSH}:${SOURCE} to ${DESTINATION}"

rsync --progress -a $SSH:$SOURCE $DESTINATION

echo "done"
