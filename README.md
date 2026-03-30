# read-to-me

A lightweight CLI to read text aloud on Linux using [edge-tts](https://github.com/rany2/edge-tts) and [mpv](https://mpv.io).

AI coding tools generate more text than you can read — specs, plans, code reviews, documentation. This lets you listen instead.

## Dependencies

- [edge-tts](https://github.com/rany2/edge-tts) — Microsoft Edge's TTS engine (free, no API key)
- [mpv](https://mpv.io) — media player
- [xclip](https://github.com/astrand/xclip) — clipboard access (optional, for `-c` flag)

## Install

```bash
pip install edge-tts
sudo apt install mpv xclip   # or your package manager

# Install read-to-me
cp read-to-me ~/.local/bin/
chmod +x ~/.local/bin/read-to-me
```

## Usage

```bash
# Read a file
read-to-me document.md

# Read from clipboard
read-to-me -c

# Read from stdin
cat notes.txt | read-to-me

# Strip markdown formatting (auto-enabled for .md files)
read-to-me -m file.txt

# Speed control (1.0 = normal, 1.5 = 50% faster)
read-to-me -s 1.3 document.md

# Combine flags
read-to-me -c -m -s 1.5

# Stop playback
read-to-me --stop
```

Markdown files (`.md`) are automatically cleaned — code blocks, tables, and formatting are stripped for natural speech. Use `-m` to force this on non-markdown input.

## Shell aliases

Source `aliases.sh` in your shell config for quick access:

```bash
source /path/to/aliases.sh
```

This gives you:

```bash
tts file.md          # read a file
tts -s 1.5 file.md   # read faster
cts                   # read clipboard
cts -s 1.3            # read clipboard faster
mts                   # read clipboard with markdown cleaning
mts -s 1.5            # read clipboard with markdown cleaning, faster
read-to-me --stop     # stop playback
```

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `EDGE_TTS_BIN` | `edge-tts` | Path to edge-tts binary |
| `VOICE` | `en-US-AriaNeural` | TTS voice ([list voices](https://gist.github.com/phineas/09dd3a6e42e01d85eb54c610dd471a3f)) |

## License

MIT
