#!/bin/bash

ARGS="$@"

docker run -d --rm \
    -v "$PWD/data/wahooMapsCreatorData:/root/wahooMapsCreatorData" \
    -v "$PWD:/app" \
    wahoo-maps-creator \
    bash -c "cd /app \
        && python3 -m wahoomc cli $ARGS"
