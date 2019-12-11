#!/bin/sh

INSTANCE_ID="ef3hlkn2il5rcsaev40r"
REGISTRY_ID="crptjipt08rs009ssq7m"
IAM=$1
echo "$IAM"

ssh ${INSTANCE_ID} docker login \
--username iam \
--password ${IAM} \
cr.yandex

ssh ${INSTANCE_ID} \
docker pull cr.yandex/${REGISTRY_ID}/test-image:latest

ssh ${INSTANCE_ID} \
docker run cr.yandex/${REGISTRY_ID}/test-image:latest
