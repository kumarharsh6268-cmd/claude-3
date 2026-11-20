#!/usr/bin/env bash
set -euo pipefail

printf "file '%s'\n" 2026-11-19_21-33-59_part0{1..6}.mp4 > parts_21-33-59.txt
ffmpeg -y -f concat -safe 0 -i parts_21-33-59.txt -c copy "2026-11-19 21-33-59.mp4"

printf "file '%s'\n" 2026-11-19_23-01-48_part0{1..6}.mp4 > parts_23-01-48.txt
ffmpeg -y -f concat -safe 0 -i parts_23-01-48.txt -c copy "2026-11-19 23-01-48.mp4"

if [ -f "2026-11-20_00-17-08.mp4" ] && [ ! -f "2026-11-20 00-17-08.mp4" ]; then
  cp "2026-11-20_00-17-08.mp4" "2026-11-20 00-17-08.mp4"
fi
echo "Done."
