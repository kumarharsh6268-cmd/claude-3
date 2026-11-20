# claude-3

OBS Gameplay Recordings (`2026-11-19` & `2026-11-20`) uploaded in **exact original quality** (`0` re-encoding) for Claude video editing.

All 3 source recordings (`1920x1080`, `30 fps`, `H.264 High@L4.0` + `AAC 48kHz stereo`, OBS Studio 33.0.1) are hosted in the [`recordings-2026-11-19`](https://github.com/kumarharsh6268-cmd/claude-3/releases/tag/recordings-2026-11-19) GitHub Release:

- `2026-11-20_00-17-08.mp4` (`1.014 GiB` / `1,088,931,164` B) — **uploaded intact as a single file** (exact byte-for-byte copy).
- `2026-11-19 21-33-59.mp4` (`3.783 GiB` / `4,061,767,108` B, `157,977` frames) — losslessly segmented at keyframe boundaries (`ffmpeg -c copy -map 0 -f segment -reset_timestamps 1`) into 6 independently playable MP4 parts (`part01`–`part06`).
- `2026-11-19 23-01-48.mp4` (`3.245 GiB` / `3,483,932,617` B, `135,499` frames) — losslessly segmented at keyframe boundaries (`ffmpeg -c copy -map 0 -f segment -reset_timestamps 1`) into 6 independently playable MP4 parts (`part01`–`part06`).

> GitHub Releases enforces a 2 GiB per-asset limit, which is why the two >3 GiB files are split at keyframe boundaries with `-c copy` (zero quality loss, exact frame count preserved).

## Quick Download & Lossless Reassembly (for Claude / CLI)

```bash
# 1. Download all release assets
gh release download recordings-2026-11-19 --repo kumarharsh6268-cmd/claude-3

# 2. Verify SHA-256 checksums
sha256sum -c checksums.sha256

# 3. Losslessly recombine the two split videos (0 re-encoding)
bash recombine.sh
```

Or on Windows PowerShell:

```powershell
gh release download recordings-2026-11-19 --repo kumarharsh6268-cmd/claude-3
.\recombine.ps1
```

## Direct Asset URLs

### 1. `2026-11-19 21-33-59.mp4` (6 parts, `157,977` frames total)
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part01.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part02.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part03.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part04.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part05.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_21-33-59_part06.mp4

### 2. `2026-11-19 23-01-48.mp4` (6 parts, `135,499` frames total)
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part01.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part02.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part03.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part04.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part05.mp4
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-19_23-01-48_part06.mp4

### 3. `2026-11-20 00-17-08.mp4` (single intact file, `42,347` frames)
- https://github.com/kumarharsh6268-cmd/claude-3/releases/download/recordings-2026-11-19/2026-11-20_00-17-08.mp4
