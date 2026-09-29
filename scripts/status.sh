#!/bin/bash

source "./scripts/common.sh"

echo
echo "======================================"
echo "     $STATION_NAME"
echo "======================================"

echo "Hostname : $(hostname)"
echo "Date     : $(date)"
echo "User     : $(whoami)"
echo

echo "Directories:"
echo "  Raw data       : $RAW_DIR"
echo "  Processed data : $PROCESSED_DIR"
echo "  Logs           : $LOG_DIR"

echo
echo "Disk usage: $(df -h .)"

echo
log "INFO" "Station status checked"