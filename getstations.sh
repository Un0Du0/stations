#!/bin/bash

#This script will download all obs for stations listed in stations.dat

INPUT_FILE=/home/pi/stations/stations.dat

for i in $(cat $INPUT_FILE); do
	wget -bqc --read-timeout=5 --tries=2 "http://dd.weather.gc.ca/cgi-bin/bulletin_search.pl?station=$i" -O /home/pi/stations/stationdata/$i
done
