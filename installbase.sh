#!/bin/sh

#clear
################################################################################################################################################################
#Pantalla de Presentacion                                                                                                                                      #
################################################################################################################################################################
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[93m # Automatizacion Controller 2.6                 # \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[93m # Archivo de Instalacion                        # \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m # Mayo 2021                                     # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[93m # WixanCL                                       # \e[0m"
echo -e "\e[93m # wwww.wixan.cl                                 # \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[92m  \e[0m"

echo -e "\e[96m Escriba el Nombre o IP del servidor \e[0m"
echo -n " >> "
read  server
echo  $server
echo -e "\e[92m  \e[0m"

echo -e "\e[96m Escriba el usuario de la base de datos \e[0m"
echo -n " >> "
read dbuser
echo  $dbuser
echo -e "\e[92m  \e[0m"


echo -e "\e[96m Escriba la cotrasena del usaurio de la base de datos \e[0m"
echo -n " >> "
read dbuserpass
echo  $dbuserpass
echo -e "\e[92m  \e[0m"

echo -e "\e[96m Escriba el nombre de la base de datos que desea crear \e[0m"
echo -n " >> "
read db
echo  $db
mysql -h $server -u $dbuser -p$dbuserpass -e "CREATE DATABASE $db;"





echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################



