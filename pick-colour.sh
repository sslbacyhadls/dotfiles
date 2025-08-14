echo "Pick color scheme:

1) Latte
2) Mocha
3) Macchiato 
4) Frappe"


read -p "Pick a number: " COLOR_NUMBER

echo $COLOR_NUMBER

case $COLOR_NUMBER in 
  1) 
    export COLOR=latte
    ;;

  2)
    export COLOR=mocha
    ;;
  
  3)
    export COLOR=macchiato
    ;;

  4)
    export COLOR=frappe
    ;;

  *)
    export COLOR=none
    ;;

esac

rm ~/.config/alacritty/theme.toml
ln -s ~/.config/alacritty/themes/catppuccin-$COLOR.toml ~/.config/alacritty/theme.toml  

rm ~/.config/sway/theme
ln -s ~/.config/sway/themes/catppuccin-$COLOR ~/.config/sway/theme  

swaymsg reload
