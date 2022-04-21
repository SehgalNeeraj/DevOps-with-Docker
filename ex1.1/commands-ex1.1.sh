#!/bin/sh

OUTPUT_FILE="output-ex1.1.txt"
echo " --- Initial State ---" > $OUTPUT_FILE
docker pull nginx

docker container run -d --name nginx1 nginx
docker container run -d --name nginx2 nginx
docker container run -d --name nginx3 nginx

echo "\ndocker ps -a" >> $OUTPUT_FILE
docker ps -a >> $OUTPUT_FILE

docker stop nginx1
docker stop nginx2

echo "\n---Final State---" >> $OUTPUT_FILE
echo "\ndocker ps -a" >> $OUTPUT_FILE
docker ps -a >> $OUTPUT_FILE