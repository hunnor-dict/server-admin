#!/bin/bash

docker stop word-trainer
docker rm word-trainer

docker pull hunnordict/word-trainer

docker run --detach --env TZ=Europe/Oslo --name word-trainer --publish 8081:80 --restart always hunnordict/word-trainer
