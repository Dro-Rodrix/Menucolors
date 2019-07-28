#!/bin/bash
#Echo por Dro-Rodrix
f_claros(){
echo
echo " Seleccionaste la opcion 1 "
echo
	echo -e "\e[1;30m GRIS OSCURO \e[0m"
	echo -e "\e[1;34m AZUL CLARO \e[0m"
	echo -e "\e[1;32m VERDE CLARO \e[0m"
	echo -e "\e[1;36m CYAN CLARO \e[0m"
	echo -e "\e[1;31m ROJO CLARO \e[0m"
	echo -e "\e[1;35m PURPURA CLARO \e[0m"
echo
echo " Presione enter para volver "
read
f_main
}

f_otros(){
echo
echo " Seleccionaste la opcion 2 "
echo
	echo -e "\e[34m AZUL \e[0m"
	echo -e "\e[32m VERDE \e[0m"
	echo -e "\e[36m CYAN \e[0m"
	echo -e "\e[31m ROJO \e[0m"
	echo -e "\e[35m PURPURA \e[0m"
	echo -e "\e[33m MARON \e[0m"
	echo -e "\e[37m GRIS \e[0m"
	echo -e "\e[1;37m BLANCO \e[0m"
	echo -e "\e[1;33m AMARRILLO \e[0m"
echo
echo " Presione enter para volver "
read
f_main
}

f_error(){
echo
echo -e "\e[1;31m
             ********* Opcion Invalida ********* \e[0m"
echo
echo
sleep 1
f_main
}

# Banner
f_banner(){
	echo
echo -e "\e[1;31m
         ********* Menu de colores By Dro-Rodrix ********* \e[0m"
echo
}

# Menu
f_main(){
clear
f_banner
echo "Bienvenidos al Menu"
echo
echo -e "Seleccione una opcion"
echo
echo -e " 1) Colores Claros "
echo
echo -e " 2) Otros Colores "
echo
echo -e " 0) Salir"
echo
read OPCION

# Ejecuta la opcion ingresada
case $OPCION in
1)
f_claros
;;
2)
f_otros
;;
0)
exit
;;
*)
f_error
;;
esac
}

while [[ true ]]; do
f_main;
done

