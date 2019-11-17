#!/bin/bash

if[$(docker container ls -q --filter name=app_db_container) != '']; then

docker container stop app_db_container

docker container rm app_db_container

fi

if[$(docker image ls -q --filter reference=app_db) != ''];then

docker image rm app_db
fi

docker build -t app_db .

docker  run -itd -p 9099:3306 --name app_db_container app_db