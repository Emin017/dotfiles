apt update
apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sed -e '/chrome/ s/^#*/#/' -i /opt/google/chrome/google-chrome
echo 'exec -a "$0" "$HERE/chrome" "$@" --user-data-dir="$HOME/.config/chrome" --no-sandbox --disable-dev-shm-usage' >> /opt/google/chrome/google-chrome
