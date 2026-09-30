#!/bin/bash

case "$1" in

    status)
        ./scripts/status.sh
        ;;

    capture)
        ./scripts/capture.sh
        ;;

    process)
        ./scripts/process.sh
        ;;

    cleanup)
        ./scripts/cleanup.sh
        ;;

    *)
        echo "Usage:"
        echo "  ./station.sh status"
        echo "  ./station.sh capture"
        echo "  ./station.sh process"
        echo "  ./station.sh cleanup"
        exit 1
        ;;

esac