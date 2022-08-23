#!/bin/sh -l

cd $GITHUB_WORKSPACE

pwd
env

export ACTION_PATH=${1}
export DATA_FROM_INPUT=${2}
echo $DATA_FROM_INPUT

echo $GH_DATA_NEW | base64 -d

export DATA_TO_SAVE=$(echo $DATA_FROM_INPUT | base64 -d)
export PATH_TO_SAVE=$(echo $ACTION_PATH | base64 -d)
# Deploy to GitHub Pages

echo $DATA_TO_SAVE
echo $PATH_TO_SAVE