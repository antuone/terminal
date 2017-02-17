# удалить папку и все в ней
sudo rm -rf ~/ftp
# изменить владельца и группу папки
sudo chown anton:anton ~/ftp
# создать папку
sudo mkdir ~/ftp
# монтирование и размонтирование дисков
sudo mount /dev/sda2 /mnt
sudo umount /mnt
# виртуальная машина
sudo apt install virtualbox
# создать ссылку на папку
ln -s /media/anton/Data1/Видео ~/Видео
# скопировать все MPEG файлы из кэша мозилы
ls | xargs file | grep 'MPEG ADTS' | cut -d':' -f1 | xargs -n 1 -I % mv % ~/Музыка
# Так можно получить ссылки на файлы сериала
curl -s 'http://futuron.name/futuron/catalog/data/item/files?id=581081' | jq -r '.data[] | .mp4Url'
#В Windows запустите командную строку от имени администратора и наберите: (The NTFS partition is in an unsafe state. Please resume and shutdown Windows fully)
powercfg -h off
# Лечит - Uncaught Error: Call to undefined function imagecreatefromjpeg()
sudo apt install php7.0-gd
#удаляет пакеты установленные раннее с уже удаленной программой. и по сему более не используемые.
sudo apt autoremove
#удаляет ранее скачанные старые и неиспользуемые архивы из каталогов /var/cache/apt/archives/ and /var/cache/apt/archives/partial/ 
sudo apt autoclean
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
sudo apt install lib32stdc++6

## В программе Disks можно задать автомонтирование разделов

#Выводит всю информацию о пакете, в том числе и версию.
aptitude show название_пакета

# Нужны для компиляции андройд
sudo apt install gperf m4

# установка openjdk7 на ubuntu 16.04.1
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-7
sudo add-apt-repository --remove ppa:openjdk-r/ppa
sudo apt update

# установка repo,  
# хотя можно и так
sudo apt install repo 
# но так версия должна быть свежее
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.local/bin/repo
chmod a+x ~/.local/bin/repo

# программа показывающая информацию о домене
sudo apt install whois

# можно скачать файл
wget http://qweqwe.qwe/qweqwe.zip

# Как смотреть температуру процессора и другие данные с датчиков
# http://geeksmagazine.org/post/409/kak-proverit-temperaturu-protsessora-v-ubuntu

#
#
#
#
