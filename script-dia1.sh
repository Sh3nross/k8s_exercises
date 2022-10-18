#!/bin/bash

echo "------------------------------"
echo "Creamos el contenedor de nginx"
echo "------------------------------"
docker run -d --name servidor_web -p 8181:80 nginx
sleep 3

echo "------------------------------"
echo "Listamos contendores corriendo"
echo "------------------------------"
docker ps
sleep 3

echo "------------------------------"
echo "Comprobamos que la página web responde"
echo "------------------------------"
curl http://localhost:8181
sleep 3

echo "------------------------------"
echo "Comprobamos las imagenes de nuestro repositorio local"
echo "------------------------------"
docker images
sleep 3

echo "------------------------------"
echo "Paramos el contenedor"
echo "------------------------------"
docker stop servidor_web
sleep 3

echo "------------------------------"
echo "Volvemos a chequear los contenedores corriendo"
echo "------------------------------"
docker ps
sleep 3

echo "------------------------------"
echo "Borramos el contenedor nginx"
echo "------------------------------"
docker rm servidor_web
sleep 3

echo "------------------------------"
echo "Con el comando siguiente comprobamos todos los contenedores tanto creados como borrados"
echo "------------------------------"
docker ps -a
