APPS="vim tmux curl"
APPS=$APPS" ack-grep"
APPS=$APPS" chromium-browser"
APPS=$APPS" ibus-mozc"

echo "=== Install Applications ==="
echo $APPS | sed -e "s/ /\n/g"
echo "============================"
sudo apt-get install $APPS


echo "=== Setting ==="
git config --global color.ui auto
