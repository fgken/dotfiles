APPS="vim tmux curl sl tree"
APPS=$APPS" ack-grep"
APPS=$APPS" chromium-browser"
APPS=$APPS" ibus-mozc"

echo "=== Install Applications ==="
echo $APPS | sed -e "s/ /\n/g"
echo "============================"
sudo apt-get install $APPS


echo "=== Setting ==="
git config --global color.ui auto

# Memo
# Sublime 3
# - ConvertToUTF8
# - IMESupport(For Win) or SublimeMozcInput(For Linux)

# For buildig qemu
# apti zlib1g-dev libglib2.0-dev

# build-essential
# nasm
# git, tig

# ruby
