# 
# ./prompt "Do you want to shutdown?" "sudo reboot"

[ $(echo -e "No\nYes" | rofi -dmenu -p "$1") == "Yes" ] && Alacritty $2
