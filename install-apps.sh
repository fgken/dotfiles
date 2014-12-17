APPS="vim tmux grep-ack"
APPS=$APPS" chromium-browser"

echo "=== Install Applications ==="
echo $APPS | sed -e "s/ /\n/g"
echo "============================"
sudo apt-get install $APPS
