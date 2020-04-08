# wifi-vpn-guard
starts a vpn on untrusted wifi networks

## supported vpn methods
- using network settings from Mac OS like IPSec or wireguard (App Store version)
- using Tunnelblick for OpenVPN

## Installation
Please configure your wifi-vpn-guard.cfg from this repository before using install.sh
There are four configuration options to adjust.
- vpn: the normal vpn you want to use if you are not in a trusted wifi network 
       e.g. vpn to your lan to get your NAS drives mapped
       can be empty
- fullvpn: this vpn is mainly used in unencrypted wifi networks where intentionally all your traffic is routed through your vpn
           if vpn is not set, fullvpn is used instead
- trusted_ssid: these are the SSIDs of your trusted networks where you don't want / need a vpn 
                if you have more than one please us a comma separated list in the array
- vpntool: here you can choose your supported vpn method macdefault or Tunnelblick
After saving your wifi-vpn-guard.cfg you can run ./install.sh.
You don't need root / sudo for this, it works with your normal user.
