# Ver las librerías instaladas el phpen Debian:
~~~
**apt list --installed | grep "^php7.3" | cut -d'/' -f1**
~~~

# instalar la versión php7.4

https://blog.pleets.org/article/instalar-php-7.4-en-debian-10-o-debian-9

# Instalar php7.4 en Debian 9 o 10
## Actualizar el sistema

~~~
**
sudo apt update
sudo apt upgrade -y && sudo reboot
**
~~~

## Agregar el PPA

El segundo paso consisten en agregar los repositorios PPA de SURY.

~~~
sudo apt -y install lsb-release apt-transport-https ca-certificates 
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
~~~

## Agregar los repos a los sources
Como ya sabes todos las fuentes de paquetes en Debian se manejan desde el archivo sources.list. El paso que sigue es agregar los repos a este archivo.

~~~
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
~~~

Actualizamos la lista de paquetes de nuevo
~~~
sudo apt update
~~~

## Instalar PHP
En este punto ya podemos instalar PHP 7.4 en nuestra máquina.
~~~
sudo apt -y install php7.4
~~~

## Configuración en Apache
Si estás utilizando PHP como módulo de Apache en Debian, debes saber que deberás cambiar la versión que está utilizando apache. Si vienes de la versión de PHP 7.3 deberás ejecutar los siguientes comandos.

~~~
sudo a2dismod php7.3
sudo a2enmod php7.4
~~~


# Instalar extensiones de PHP en Debian
En debian es relativamente sencillo instalar extensiones de PHP. Lo primero que debes tener en cuenta es el nombre de la extensión que vas a instalar, por ejemplo intl. La manera más sencilla de instalar esta extensión es ejecutar el siguiente comando.

~~~
sudo apt-get install php-intl
sudo apt-get install php-pdo-mysql
sudo apt-get install php7.4-curl php7.4-dev php7.4-fpm php7.4-gd php7.4-mbstring php7.4-soap php7.4-xml php7.4-zip
sudo service apache2 restart
~~~


## Fuentes:
- https://www.linuxito.com/gnu-linux/nivel-alto/1451-actualizar-la-version-de-php-en-un-servidor-debian
- https://blog.pleets.org/article/instalar-php-7.4-en-debian-10-o-debian-9
