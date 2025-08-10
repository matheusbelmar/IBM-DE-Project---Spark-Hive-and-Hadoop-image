#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M")
LOG_DIR="docker_logs/$TIMESTAMP"

# Create the log directory if it doesn't exist
mkdir -p "$LOG_DIR"
echo "Creating log directory: $LOG_DIR"

SERVICES=$(docker compose config --services)

echo "Generating logs for the following services:"
echo "$SERVICES" 

# Loop through each service and capture its logs
for SERVICE in $SERVICES; do
    LOG_FILE="$LOG_DIR/${SERVICE}_log.txt"
    docker compose logs "$SERVICE" > "$LOG_FILE" 2>&1 &
    sleep 1
done

echo "Logging Sucessful"