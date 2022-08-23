#!/bin/sh -l

cd $GITHUB_WORKSPACE

pwd
env

export ACTION_PATH=${1}
export DATA_FROM_INPUT=${2}
echo $DATA_FROM_INPUT

DATA_TO_SAVE=$(echo $DATA_FROM_INPUT | base64 -di)
PATH_TO_SAVE=$(echo $ACTION_PATH | base64 -di)
# Deploy to GitHub Pages

echo $DATA_TO_SAVE
echo $PATH_TO_SAVE