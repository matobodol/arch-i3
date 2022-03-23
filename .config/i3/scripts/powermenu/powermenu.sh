#!/usr/bin/env bash

# Load Global Variable
source $HOME/.config/i3/.idesktop

rofi_command="rofi -theme ~/.config/i3/rofi/idesktop.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
logout=" Log Out"
suspend=" Suspend"


# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$logout\n$suspend"
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"

case $chosen in
    $shutdown)
        ~/.config/i3/scripts/powermenu/promptmenu.sh  --yes-command "$POWEROFF" --query "      Poweroff ?"
        ;;
    $reboot)
        ~/.config/i3/scripts/powermenu/promptmenu.sh  --yes-command "$REBOOT" --query "       Reboot ?"
        ;;
    $lock)
        bash -c $LOCK
        ;;
    $logout)
        ~/.config/i3/scripts/powermenu/promptmenu.sh --yes-command "pkill -KILL -u $(whoami)" --query "       Logout?"
        ;;
    $suspend)
        mpc -q pause
        bash -c "$SLEEP"
        bash -c "$LOCK"
        ~/.config/i3/scripts/display/brightness-startup
        ;;
esac
