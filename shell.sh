#!/bin/sh
ls
docker kill $(docker ps -q)
git fetch && git rebase
docker build -t web-example .
docker run -p 8080:8080 web-example &