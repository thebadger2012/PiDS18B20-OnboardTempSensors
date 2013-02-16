#!/bin/sh
#
# A script to write the PI's
# on board thermometer and a
# DS18B20 connected via GPIO
# reading to .txt files
#
#
OFLE='/var/www/data/onbd.txt'
DFLE='/var/www/data/dstp.txt'
DTMP=`cat /sys/bus/w1/devices/28-000004473304/w1_slave`
OTMP=`vcgencmd measure_temp`
echo $DTMP>$DFLE
echo $OTMP>$OFLE
