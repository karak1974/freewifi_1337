# Free Wifi 1337

The [original idea](https://www.hackerspace-szeged.org/projects/freewifi/) is from a hackerspace member.

## Description
A fake Wi-Fi access point, with a number as the SSID. Is a device connects to it, it increases the number and drops the device off the nerwork. 

This script can run on any device that runs OpenWrt.
Tested on an [Onion Omega2+](https://onion.io/Omega2/).

## How to use
Upload the freewifi.sh to the device that runs OpenWrt and run it.
```
chmod +x freewifi.sh
./freewifi.sh
```
If you want this to run at boot, just run the next lines.
```
cp freewifi.sh /etc/init.d/
chmod +x /etc/init.d/freewifi.sh
echo -e "sh /etc/init.d/freewifi.sh \nexit 0" > /etc/rc.local
```