#!/bin/sh

INSTANCE_ID="ef3hlkn2il5rcsaev40r"
REGISTRY_ID="crptjipt08rs009ssq7m"
IAM=$1
echo "$IAM"

docker login \
--username iam \
--password ${IAM} \
cr.yandex

docker pull cr.yandex/${REGISTRY_ID}/test-image:latest

docker run cr.yandex/${REGISTRY_ID}/test-image:latest
