#!/bin/sh

cd ./traefik

sudo docker-compose up -d reverse-proxy

sudo docker-compose up -d --scale whoami=2
