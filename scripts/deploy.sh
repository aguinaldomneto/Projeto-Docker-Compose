#!/bin/bash

VERSION=$1

export VERSION=$VERSION

echo "🚀 Deploy da versão $VERSION..."

docker compose down
docker compose up -d

echo "✅ Deploy finalizado!"
