#!/bin/sh

cd ./traefik

sudo docker-compose up -d traefik

sudo docker-compose up -d --scale whoami=2
