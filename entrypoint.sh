#!/bin/sh -l

cd $GITHUB_WORKSPACE

pwd

export ACTION_PATH=${1}
export DATA_FROM_INPUT=${2}

DATA_TO_SAVE=$(echo $DATA_FROM_INPUT | base64 -d)
PATH_TO_SAVE=$(echo $ACTION_PATH | base64 -d)
# Deploy to GitHub Pages

echo $DATA_TO_SAVE
echo $PATH_TO_SAVE