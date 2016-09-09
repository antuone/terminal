#удаляет пакеты установленные раннее с уже удаленной программой. и по сему более не используемые.
sudo apt-get autoremove
#удаляет ранее скачанные старые и неиспользуемые архивы из каталогов /var/cache/apt/archives/ and /var/cache/apt/archives/partial/ 
sudo apt-get autoclean
# Разное
sudo apt update
sudo apt upgrade
# установить видео драйвер 
sudo apt install nvidia-361
# програма в которой можно включить звук в наушниках
alsamxer //сделать 4ch
# установка ламп сервера
sudo apt install lamp-server^
# перезапуск сервисов
sudo service mysql restart
sudo service apache2 restart
# подключение к mysql и просмотр переменных char%
mysql -uroot -p
SHOW VARIABLES LIKE 'char%';
# установка workbench
sudo apt install mysql-workbench
# установка комодо
anton@computer:~/Загрузки/Komodo-Edit-9.3.2-16460-linux-x86_64$ ./install.sh
# установка sendmail
sudo apt install sendmail
# установка флешплеера
sudo apt install adobe-flashplugin

# список библиотек которые можно обновить
sudo apt list --upgradable

# установка gparted
sudo apt install gparted

# конфигурирование java (тут не все хорошо, нужно разобратся)
sudo apt autoremove
sudo apt remove openjdk-*
sudo mkdir -p /usr/local/java
sudo cp -r * /usr/local/java
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/bin/javaws" 1
sudo update-alternatives --set java /usr/local/java/bin/java
sudo update-alternatives --set javac /usr/local/java/bin/javac
sudo update-alternatives --set javaws /usr/local/java/bin/javaws

gedit /etc/profile
JAVA_HOME=/usr/local/java
PATH=$PATH:$JAVA_HOME/bin
export JAVA_HOME


# перед установкой android studio на ubuntu 16.04 x64
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1

# В программе Disks можно задать автомонтирование разделов
#
#
#
