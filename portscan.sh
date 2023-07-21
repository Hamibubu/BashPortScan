#!/bin/bash
function ctrl_c(){
  echo -e "\nSaliendo...\n"
  tput cnorm; exit 1
}

# CTRL + C 
trap ctrl_c INT

while [ "$1" != "" ]; do
	case "$1" in
		-i | --ip )		ip="$2";	shift;;
		-p | --puertos )		puertos="$2";	shift;;
	esac
	shift
done
#Ve que se hayan proporcionado los puertos
if [[ $puertos == "" ]]; then
  echo "Proporciona el o los puertos -p"
  exit
fi
#Ve que la ip se haya proporcionado
if [[ $ip == "" ]]; then
	echo "Porfavor dame la ip -i"
	exit
fi
tput civis
# Verificar los rangos de puertos
if [[ "$puertos" == *-* ]]; then
  inicio=${puertos%-*}
  final=${puertos#*-}
else
  inicio=$puertos
  final=$puertos
fi
for puerto in $(seq $inicio $final); do
  (echo '' > /dev/tcp/$ip/$puerto) 2>/dev/null && echo "[+] El puerto $ip:$puerto está abierto" &
done; wait
tput cnorm
