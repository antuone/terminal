#В Windows запустите командную строку от имени администратора и наберите: (The NTFS partition is in an unsafe state. Please resume and shutdown Windows fully)
powercfg -h off
# Лечит - Uncaught Error: Call to undefined function imagecreatefromjpeg()
sudo apt install php7.0-gd
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

# перед установкой android studio на ubuntu 16.04 x64
#sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1
#sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
# For UBUNTU 15.04,15.10,16.04 LTS & Debian 8 Try this command: 
sudo apt-get install lib32stdc++6
# В программе Disks можно задать автомонтирование разделов
#
#
#
