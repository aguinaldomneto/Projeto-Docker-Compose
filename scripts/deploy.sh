script: |
  cd ~/projeto-devops

  VERSION="${{ needs.build-and-push.outputs.VERSION }}"

  echo "Versão recebida: $VERSION"

  if [ -z "$VERSION" ]; then
    echo "❌ VERSION está vazia"
    exit 1
  fi

  export VERSION=$VERSION

  docker compose down
  docker compose pull
  docker compose up -d
  echo "deploy finalizado"
