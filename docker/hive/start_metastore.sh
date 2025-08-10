#!/bin/bash
set -e

printf "Initiating custom entrypoint\n\n"
echo "Aguardando o NameNode estar pronto para comandos HDFS..."

until hdfs dfs -ls / > /dev/null 2>&1; do
  echo "NameNode não está pronto ainda, aguardando..."
  sleep 1
done

echo "NameNode está pronto!"

if /opt/hive/bin/schematool -dbType postgres -info &>/dev/null; then
  echo "Esquema da Metastore já inicializado. Pulando a inicialização."
else
  echo "Esquema da Metastore não encontrado. Iniciando a inicialização do esquema..."
  /opt/hive/bin/schematool -dbType postgres -initSchema
  echo "Inicialização do esquema concluída com sucesso."
fi

echo "Iniciando o serviço Hive Metastore..."
exec /opt/hive/bin/hive --service metastore
