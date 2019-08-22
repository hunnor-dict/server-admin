#!/bin/bash

before=$(docker images -q hunnordict/word-trainer)

docker pull hunnordict/word-trainer

after=$(docker images -q hunnordict/word-trainer)

if [ "$before" == "$after" ]; then
	echo "Image up to date"
	exit 0
fi

docker stop word-trainer
docker rm word-trainer

docker run --detach --env TZ=Europe/Oslo --name word-trainer --publish 8081:80 --restart always hunnordict/word-trainer
