#!/bin/sh
# Script to find the temperature from /sys interface
# for a (tested with) amd64 AM2 processor
tval1=`cut -c -2 /sys/class/hwmon/hwmon0/device/temp1_input`
tval2=`cut -c -2 /sys/class/hwmon/hwmon0/device/temp3_input`
echo Temp: $tval1°C/$tval2°C
