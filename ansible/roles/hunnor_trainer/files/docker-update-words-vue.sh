#!/bin/bash

before=$(docker images -q hunnordict/words-vue)

docker pull hunnordict/words-vue

after=$(docker images -q hunnordict/words-vue)

if [ "$before" == "$after" ]; then
	echo "Image up to date"
	exit 0
fi

docker stop words-vue
docker rm words-vue

docker run --detach --env TZ=Europe/Oslo --name words-vue --publish 127.0.0.1:8081:80 --restart always hunnordict/words-vue
