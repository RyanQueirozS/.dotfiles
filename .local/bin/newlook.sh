
wall=$(find $HOME/Pictures/Wallpapers/ -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

xwallpaper --zoom $wall
# wal -c
# wal -i $wall

#$HOME/alacritty-color-export/script.sh
 
 betterlockscreen -u $wall
  
  xdotool key super+shift+r
