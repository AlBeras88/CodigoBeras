
clear

echo "Seleccione la Opcion Que desea Realizar: 

1-Cual es mi Direccion IP


2-Ver Host Contectados a la 'Red'


3-Cambiar Direccion 'IP'"

echo "   "

read Opcion

if [ "$Opcion" -eq 1 ] 

then

clear

ifconfig

elif [ "$Opcion" -eq 2 ] 

then

clear

echo "Digite el rango de sus direcciones IP"

read Rango

sudo nmap -sP "$Rango"-254


elif [ "$Opcion" -eq 3 ]

then

echo "Digite la NUeva direccion IP "

read Direccion

sudo ifconfig enp0s3 $Direccion netmask 255.255.255.0

echo "Direccion Ip Cambiada Correctamente! "

else

echo "Opcion Incorrecta"

fi
