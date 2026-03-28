#!/bin/bash

VERSION=$1
USER="aguinaldomneto"

echo "🚀 Enviando imagem para Docker Hub..."

docker tag projeto-devops:$VERSION $USER/projeto-devops:$VERSION
docker tag projeto-devops:latest $USER/projeto-devops:latest

docker push $USER/projeto-devops:$VERSION
docker push $USER/projeto-devops:latest

echo "✅ Push concluído!"
