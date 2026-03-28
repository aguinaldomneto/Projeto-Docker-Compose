#!/bin/bash

VERSION=$1

echo "🔨 Build da versão $VERSION..."

# Vai para a raix do projeto automaticamente
cd "$(dirname "$0")/.."
docker build -t projeto-devops:$VERSION -t projeto-devops:latest .

echo "✅ Build concluído!"
