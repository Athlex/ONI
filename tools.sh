#!/bin/bash

nala install mosh dnsmasq hostapd tmux git htop net-tools cowsay python3 python3-pip python3-virtualenv bpytop tigervnc-standalone-server tigervnc-common cmatrix chromium pipx -y -v

mkdir -p ~/tools
cd /usr/share/NCC
git clone https://github.com/ChrisTruncer/EyeWitness
git clone https://github.com/SpiderLabs/Responder
git clone https://github.com/robertdavidgraham/masscan
git clone https://github.com/byt3bl33d3r/MITMf
git clone https://github.com/byt3bl33d3r/CrackMapExec
git clone https://github.com/DanMcInerney/net-creds
git clone https://github.com/ChrisTruncer/PenTestScripts
git clone https://github.com/PowerShellMafia/PowerSploit
git clone https://github.com/Veil-Framework/Veil
git clone https://github.com/TheRook/subbrute
git clone https://github.com/vanhauser-thc/thc-ipv6
git clone https://github.com/CoreSecurity/impacket
wget http://dnscurve.org/nsec3walker-20101223.tar.gz
git clone https://github.com/zyn3rgy/LdapRelayScan
git clone https://github.com/michenriksen/aquatone 

pipx install bbot

#cloud-specific tools
#nala install awscli
#pip install pmapper
#pip install scoutsuite
