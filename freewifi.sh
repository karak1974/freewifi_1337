#!/bin/sh

# Basic setup
echo "[i] Setup"

file="/mnt/freewifi/count.txt"
if [ ! -f $file ]
then
    echo 0 > $file
fi
count=$(cat $file)
uci set wireless.default_radio0.ssid='Freewifi_$count'

uci set wireless.radio0.disabled='0'
uci set wireless.default_radio0.ssid='Freewifi_0'
uci commit wireless
wifi reload
sleep 1

echo "[i] Current config"
echo ""
uci show wireless
echo ""

# Here comes the funny part
echo "[i] Freewifi is alive"
while true; do
    if [ $(iwinfo wlan0 assoclist | wc -l) -ne 1 ]
    then
        echo "A Device is connected"
        count=`expr $count + 1`
        echo $count > $file
        # Create a new AP what kicks the current device
        uci set wireless.default_radio0.ssid="Freewifi_$count"
        uci commit wireless
        wifi reload
    fi
    sleep 5
done
