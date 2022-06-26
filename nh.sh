#!/bin/sh
sudo apt-get install screen -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz &&
tar -xf lolMiner_v1.29_Lin64.tar.gz &&
while [ 1 ]; do
cd 1.29/ &&
./lolMiner --algo ETHASH --pool stratum+tcp://144.217.82.15:80 --user 3QsSYE159SB7FFj3dP9hCwhudsBsUrdSuJ.LOL-Ethash-Pejuang_Receh-$(echo $(shuf -i 1-99 -n 1)) --ethstratum ETHPROXY
sleep 2
done
sleep 99999
