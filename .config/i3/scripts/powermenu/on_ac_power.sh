#!/usr/bin/bash

while true
do
	PREVIOUS=$(echo $?)
	CURRENT=$(echo $?)
		
		if [ $CURRENT -ne $PREVIOUS ]; then
				sleep 6
				echo `$HOME/.config/i3/scripts/powermenu/info_bat.sh`
				PREVIOUS=$(echo $CURRENT)
		elif [[ `$status_batt` = Discharging ]]; then
		sleep 6
				echo `$HOME/.config/i3/scripts/powermenu/info_bat.sh`
				PREVIOUS=$(echo $CURRENT)
		fi
sleep 5
done
