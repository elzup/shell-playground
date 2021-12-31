#!/bin/bash

gource \
    -s .08 \
    -1280x720 \
    --auto-skip-seconds .1 \
    --multi-sampling \
    --stop-at-end \
    --key \
    --highlight-users \
    --date-format "YYYY-MM-DD hh:mm:ss +tz" \
    --hide mouse \
    --file-idle-time 0 \
    --max-files 0  \
    --background-colour 000000 \
    --font-size 25 \
    -output-custom-log gsource-log.txt