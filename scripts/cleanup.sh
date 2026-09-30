#!/bin/bash

source "./scripts/common.sh"

log "INFO" "Starting cleanup"

find "$RAW_DIR" -type f -name "*.dat" -mtime +7 -delete
find "$PROCESSED_DIR" -type f -name "*.json" -mtime +30 -delete

log "INFO" "Cleanup completed"