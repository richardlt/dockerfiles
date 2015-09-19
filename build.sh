#!/bin/sh

if [ $# -eq 0 ]
	then
		echo "No name supplied"
fi

NAME=$1
FOLDER=$PWD/docker-$NAME
IMAGE=`cat "$FOLDER/image"`

cd $FOLDER

docker build -t "$IMAGE:build" .