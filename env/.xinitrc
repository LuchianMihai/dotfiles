session=bspwm

case $session in
   i3|i3wm)
      exec i3
      ;;
   dwm)
      export _JAVA_AWT_WM_NONREPARENTING=1
      export QT_QPA_PLATFORMTHEME=gtk2
      export QT_STYLE_OVERRIDE=gtk2

      feh --no-fehbg --bg-scale ~/conf/imgs/wallpaper-dell.jpg &
      exec conky -c ~/.config/conky/conky-2.conf &
      exec ~/dwm-bar/dwm_bar.sh &
      exec dwm
      ;;
   openbox)
      exec openbox-session
      ;;
   lxqt)
      exec startlxqt
      ;;
   awesome)
      exec awesome
      ;;
   bspwm)
      exec bspwm
      ;;
esac
