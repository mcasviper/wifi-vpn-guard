#!/bin/bash
mkdir -p ~/Applications/wifi-vpn-guard
cp wifi-vpn-guard ~/Applications/wifi-vpn-guard/wifi-vpn-guard

mkdir -p ~/Library/Application\ Support/wifi-vpn-guard/ 
source wifi-vpn-guard.cfg
if [[ $vpn == DEFAULTVPNNAME || $fullvpn == DEFAULTFULLVPN || " ${trusted_ssids[@]} " =~ " DEFAULTSSID "  ]]; then
    osascript -e "display notification \"Change Default Values before use!\" with title \"REMOVE BEFORE FLIGHT\""
    exit 1
fi 
cp wifi-vpn-automator.cfg ~/Library/Application\ Support/wifi-vpn-guard/wifi-vpn-guard.cfg

mkdir -p ~/Library/Caches/wifi-vpn-guard/

cp wifi-vpn-guard.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/wifi-vpn-guard.plist
