#!/bin/bash


print_battery() {

CAPACITY="$(cat /sys/class/power_supply/BAT0/capacity)"

if [ "$CAPACITY" <= 25 ] ;
then
	OUT=" "
fi

CHARGING="$(cat /sys/class/power_supply/BAT0/status)"
if [ "${CHARGING}" = "Charging" ] ;
then
	OUT=" "
fi

echo "$OUT$CAPACITY"
}


INTERVAL=5
CHARGING=""
CAPACITY=""
OUT=""

while true;
do
	print_battery
	sleep $INTERVAL
done
