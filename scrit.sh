#!/bin/bash
usuario=joao
senha=123
while [[ $sair != sair ]]; do
	QNT=1
	clear
	echo
	echo "Debian GNU/Linux 8 jessie tty1"
	echo
	while (( $QNT <= 5 )); do
	echo -n "jessie login: "
	read login
	echo -n "password: "
	read -s pass
	echo
	if [[ $login == $usuario ]]; then
		if [[ $pass == $senha ]]; then
		QNT=6
		sair=sair
		fi
	   else
		sleep 1
		echo
		echo "login incorrect"
	fi
	let QNT=($QNT+1)
	done
done
