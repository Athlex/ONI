#!/bin/bash

apt update

apt -y install bpytop htop autossh nala
nala purge burpsuite maltego geoclue* geoclue-2.0* zeitgeist* hashcat -y

nala upgrade -y -v
nala autoremove -y -v
nala clean -v
apt update && apt -y dist-upgrade && apt -y autoremove && apt -y clean
