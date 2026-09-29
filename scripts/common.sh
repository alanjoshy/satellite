#!/bin/bash

CONFIG_FILE="./config/station.conf"

if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
else
    echo "ERROR: Configuration file not found: $CONFIG_FILE"
    exit 1
fi

log() {
    local level="$1"
    local message="$2"

    timestamp=$(date "+%Y-%m-%d %H:%M:%S")

    echo "$timestamp [$level] $message" | tee -a "$LOG_DIR/station.log"
}