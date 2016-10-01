for i in $(seq 1 10)
do
	cad="g1_""$i"
	echo "$cad"
	sudo useradd -g sistemasG1 -d /home/"$cad" -m -s /bin/bash "$cad"
	sudo passwd "$cad"
	sudo chmod g=-w-r-x /home/"$cad"
done
