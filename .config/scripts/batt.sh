#!/bin/bash

CAPA=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)
ICON1=" 🔋 "
ICON2=" 🔌 "
ICON3=" ⚡ "

if [ "$STATUS" = "Charging" ]; then

	echo "$ICON2 $CAPA% "
	
elif [ "$STATUS" = "Discharging" ]; then
	
	echo "$ICON1 $CAPA% "
	
elif [ "$STATUS" = "Full" ]; then
	
	echo "$ICON3 $CAPA% "
	
else 

echo " ♻️ " 
	
fi


