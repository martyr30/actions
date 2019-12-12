#!/bin/sh

INSTANCE_ID="ef3hlkn2il5rcsaev40r"
REGISTRY_ID="crptjipt08rs009ssq7m"
IAM=$1
echo "$1" >> iam4.txt
#echo "$IAM" >> iam2.txt

#docker login --username iam --password ${IAM} cr.yandex

cat iam4.txt | sudo docker login --username iam --password-stdin

sudo docker pull cr.yandex/${REGISTRY_ID}/test-image:latest

sudo docker run cr.yandex/${REGISTRY_ID}/test-image:latest
