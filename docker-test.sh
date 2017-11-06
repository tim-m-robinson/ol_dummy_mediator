#!/bin/bash
docker run -it --rm\
 -v "$PWD":/usr/src/app\
 -v /var/run/docker.sock:/var/run/docker.sock\
 -v "$HOME"/.m2:/root/.m2\
 -u root\
 -w /usr/src/app\
 maven:3-jdk-8 mvn -B -DBASE_HOST="10.0.2.15" test -P unit-test
