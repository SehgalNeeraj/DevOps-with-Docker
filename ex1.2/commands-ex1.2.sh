#!/bin/sh

OUTPUT_FILE="output-ex1.2.txt"

echo "--- Initial State ---" > $OUTPUT_FILE

echo "\ndocker ps -a" >> $OUTPUT_FILE
docker ps -as >> $OUTPUT_FILE

echo "\ndocker images" >> $OUTPUT_FILE
docker images >> $OUTPUT_FILE

echo "\n--- Cleanup ---"
docker rm $(docker ps -a -q) -f
docker rmi $(docker images -a -q) -f

echo "\n--- Final State ---" >> $OUTPUT_FILE

echo "\ndocker ps -a" >> $OUTPUT_FILE
docker ps -a >> $OUTPUT_FILE

echo "\ndocker images" >> $OUTPUT_FILE
docker images >> $OUTPUT_FILE

