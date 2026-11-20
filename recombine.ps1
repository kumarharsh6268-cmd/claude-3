$ErrorActionPreference = "Stop"

1..6 | ForEach-Object { "file '2026-11-19_21-33-59_part0$_.mp4'" } | Set-Content parts_21-33-59.txt -Encoding Ascii
ffmpeg -y -f concat -safe 0 -i parts_21-33-59.txt -c copy "2026-11-19 21-33-59.mp4"

1..6 | ForEach-Object { "file '2026-11-19_23-01-48_part0$_.mp4'" } | Set-Content parts_23-01-48.txt -Encoding Ascii
ffmpeg -y -f concat -safe 0 -i parts_23-01-48.txt -c copy "2026-11-19 23-01-48.mp4"

if ((Test-Path "2026-11-20_00-17-08.mp4") -and -not (Test-Path "2026-11-20 00-17-08.mp4")) {
  Copy-Item "2026-11-20_00-17-08.mp4" "2026-11-20 00-17-08.mp4"
}
Write-Host "Done."
