APPS="vim tmux"
APPS=$APPS" ack-grep"
APPS=$APPS" chromium-browser"
APPS=$APPS" ibus-mozc"

echo "=== Install Applications ==="
echo $APPS | sed -e "s/ /\n/g"
echo "============================"
sudo apt-get install $APPS
