#!/bin/bash

source "./scripts/common.sh"

log "INFO" "Starting satellite signal capture"

mkdir -p "$RAW_DIR"

TIMESTAMP=$(date "+%Y%m%d_%H%M%S")
OUTPUT_FILE="$RAW_DIR/capture_$TIMESTAMP.dat"

echo "SATELLITE SIGNAL DATA" > "$OUTPUT_FILE"
echo "Satellite: TEST-SAT-1" >> "$OUTPUT_FILE"
echo "Frequency: 137.100 MHz" >> "$OUTPUT_FILE"
echo "Signal: -72 dBm" >> "$OUTPUT_FILE"
echo "Captured: $(date)" >> "$OUTPUT_FILE"

sleep 2

log "INFO" "Capture completed: $OUTPUT_FILE"

echo "$OUTPUT_FILE"