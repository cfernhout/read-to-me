# Shell aliases for read-to-me
# Add to your .bashrc, .zshrc, or aliases file:
#   source /path/to/aliases.sh

# Read a file aloud: tts file.md, tts -s 1.5 file.md
alias tts='read-to-me'

# Read clipboard aloud: cts, cts -s 1.3
cts() { xclip -selection clipboard -o | read-to-me "$@"; }

# Read clipboard with extra markdown stripping: mts, mts -s 1.5
mts() { xclip -selection clipboard -o | sed 's/[#*`_~>]//g; s/\[.*\](.*)//g; s/^-\s//g' | read-to-me "$@"; }
