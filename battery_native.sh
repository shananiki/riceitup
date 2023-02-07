#!/bin/bash


print_battery() {
cat /sys/class/power_supply/BAT0/capacity
}


INTERVAL=5

while true;
do
	print_battery
	sleep $INTERVAL
done
