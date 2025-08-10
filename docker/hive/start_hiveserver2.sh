#!/bin/bash
set -e 

printf "Initiating custom entrypoint\n\n"
echo "Aguardando o NameNode estar pronto para comandos HDFS..."

until hdfs dfs -ls / > /dev/null 2>&1; do
  echo "NameNode não está pronto ainda, aguardando..."
  sleep 1
done

echo "NameNode está pronto!"

echo "Iniciando o serviço HiveServer2..."
exec /opt/hive/bin/hive --service hiveserver2