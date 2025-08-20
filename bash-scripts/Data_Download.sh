#!/bin/bash
set -e  # Exit on error

# Read arguments from command line
URL="$1"
FILENAME="$2"
DATA_DIR="/opt/data/imports"

echo "Downloading $FILENAME..."
wget -q --show-progress "$URL" -O "$DATA_DIR/$FILENAME"