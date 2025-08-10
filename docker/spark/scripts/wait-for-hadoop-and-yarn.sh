#!/bin/bash
set -e

echo "Aguardando o NameNode..."
until nc -z namenode 9000; do
  echo "NameNode indisponível, tentando novamente em 1 segundo..."
  sleep 1
done
echo "NameNode está pronto e acessível!"

echo "Aguardando o ResourceManager (porta 8032)..."
until nc -z resourcemanager 8032; do
  echo "ResourceManager indisponível, tentando novamente em 1 segundo..."
  sleep 1
done
echo "ResourceManager está pronto e acessível!"

exec "$@"