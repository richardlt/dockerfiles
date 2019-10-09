#!/bin/sh

if [ $# -eq 0 ]
	then
		echo "No name supplied"
    exit 1
fi

if [ -z "$REPOSITORY" ]
	then
		echo "No repository supplied"
    exit 1
fi

if [[ $1 == *":"* ]]
then
  NAME=`echo $1 | cut -d ':' -f1`
  TAG=`echo $1 | cut -d ':' -f2`
else 
  NAME=$1
  JSON=`curl --silent https://registry.hub.docker.com/v1/repositories/$REPOSITORY/$NAME/tags`
  TAG=`JSON=$JSON node tags-explorer.js $JSON`
fi

echo "Tags :$TAG and :latest will be pushed"

FOLDER=$PWD/docker-$NAME
IMAGE=`cat "$FOLDER/image"`

cd $FOLDER

docker tag "$IMAGE:build" "$IMAGE:$TAG"
docker tag "$IMAGE:build" "$IMAGE:latest"

docker push "$IMAGE:$TAG"
docker push "$IMAGE:latest"