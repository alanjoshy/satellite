#!/bin/bash

source "./scripts/common.sh"

log "INFO" "Starting data processing"

mkdir -p "$PROCESSED_DIR"

LATEST_FILE=$(find "$RAW_DIR" -type f -name "*.dat" | sort | tail -n 1)

if [ -z "$LATEST_FILE" ]; then
    log "ERROR" "No raw capture files found"
    exit 1
fi

TIMESTAMP=$(date "+%Y%m%d_%H%M%S")
OUTPUT_FILE="$PROCESSED_DIR/telemetry_$TIMESTAMP.json"

SATELLITE=$(grep "Satellite:" "$LATEST_FILE" | cut -d ':' -f 2 | xargs)
FREQUENCY=$(grep "Frequency:" "$LATEST_FILE" | cut -d ':' -f 2 | xargs)
SIGNAL=$(grep "Signal:" "$LATEST_FILE" | cut -d ':' -f 2 | xargs)

cat > "$OUTPUT_FILE" <<EOF
{
  "satellite": "$SATELLITE",
  "frequency": "$FREQUENCY",
  "signal": "$SIGNAL",
  "processed_at": "$(date)"
}
EOF

log "INFO" "Processing completed: $OUTPUT_FILE"

cat "$OUTPUT_FILE"