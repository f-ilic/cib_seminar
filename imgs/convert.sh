#!/bin/bash
IN_FILE="$1"
OUT_FILE="$2"
convert -density 600 -depth 8 -quality 90 -background white -alpha remove -alpha off "$IN_FILE" "$OUT_FILE"