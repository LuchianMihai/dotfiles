
exec dunst -conf ~/configs/etc/dunst.conf &

session=${WM}

case $session in
   i3|i3wm)
      exec i3
      ;;
   dwm)
      feh --no-fehbg --bg-scale ~/conf/imgs/wallpaper-dell.jpg &
      exec conky -c ~/.config/conky/conky-2.conf &
      exec ~/dwm-bar/dwm_bar.sh &
      exec dwm
      ;;
   openbox)
      feh --no-fehbg --bg-scale ~/conf/imgs/wallpaper-dell.jpg &
      exec conky -c ~/.config/conky/conky-2.conf &
      exec openbox-session
      ;;
esac
