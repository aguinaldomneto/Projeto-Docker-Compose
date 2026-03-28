#!/bin/bash

VERSION=$1

echo "⏪ Rollback para versão $VERSION..."

export VERSION=$VERSION

docker compose down
docker compose up -d

echo "✅ Rollback concluído!"
