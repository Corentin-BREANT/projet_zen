#!/bin/bash -e

function main() {
    local host="127.0.0.1"
    local port="8080"
    local server=$(php -S "${host}:${port}")
}

main "${@}"
