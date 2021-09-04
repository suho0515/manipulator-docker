#! /bin/bash

# You gotta run this file first in your local os.

# network
# check out your parents ip address first.
# ref: https://hooni-playground.com/657/
sudo docker network create -d macvlan -o macvlan_mode=bridge --subnet=192.168.50.0/24 --gateway=192.168.50.1 -o parent=enp4s0 macvlan-bridge

# drive
sudo docker volume create dockursim

# program setting
git clone https://github.com/suho0515/ur-externalcontrol.git ~/docker/ursim/programs
