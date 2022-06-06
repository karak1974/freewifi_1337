# Free Wifi 1337

The main idea is from a hackerspace member.
Here's the [article](https://www.hackerspace-szeged.org/projects/freewifi/)

## Description
A fake Wi-Fi access point, advertises itself with the SSID in the title, if someone connects then disconnect the device, and increase the value in the SSID.
This script can run on any device what runs OpenWrt.
Tested on a [Onion Omega2+](https://onion.io/Omega2/)

## How to use
Upload the freewifi.sh to the device what runs OpenWrt, after that make it executable and run it.
```
chmod +x freewifi.sh
./freewifi.sh
```
If you want this to run at boot just run the next lines
```
cp freewifi.sh /etc/init.d/
chmod +x /etc/init.d/freewifi.sh
echo -e "sh /etc/init.d/freewifi.sh \nexit 0" > /etc/rc.local
```
