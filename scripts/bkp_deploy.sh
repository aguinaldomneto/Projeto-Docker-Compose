#!/bin/bash

echo " Iniciando deploy..."

cd ~/projeto-devops

git pull origin main

docker-compose down

docker-compose up -d --build

echo " Deploy finalizado!"
