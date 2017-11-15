#!/bin/sh
RED_COLOR='\x1b[1;31m'
GREEN_COLOR='\x1b[1;32m'
YELLOW_COLOR='\x1b[1;33m'
BLUE_COLOR='\x1b[1;34m'
PINK_COLOR='\x1b[1;35m'
RES_COLOR='\x1b[0m'

function usage() {
    echo "USAGE $0 content {red|yellow|blue|green|pink}"
    exit $*
}

function choose() {
    case "$2" in
        red|RED)
            echo -e "${RED_COLOR}$1${RES}"
            ;;
        yellow|YELLOW)
            echo -e "${YELLOW_COLOR}$1${RES}"
            ;;
        green|GREEN)
            echo -e "${GREEN_COLOR}$1${RES}"
            ;;
        blue|BLUE)
            echo -e "${BLUE_COLOR}$1${RES}"
            ;;
        pink|PINK)
            echo -e "${PINK_COLOR}$1${RES}"
            ;;
        *)
            usage 1
    esac
}

function main() {
    if [ $# -ne 2 ]; then
        usage 2
    fi
    choose $*
}

main $*
