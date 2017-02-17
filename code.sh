# Немногие знают, что man-страницы можно читать и без команды man:
zcat /usr/share/man/man1/man.1.gz | nroff -man | less
# нумерует строки
ls -a | nl
# Возвращаемся к веселым командам, yes выводит текст несколько раз:
# Используйте ее, чтобы запутать подкравшихся сзади друзей. Внимание, единственный способ остановить ее — CTRL + C (ну, или закрыть терминал)
yes [string]
# Команда w показывает, кто на данный момент вошел в систему, наряду с другой полезной информацией такой, как время работы или нагрузкой процессора.
w
# Старый-добрый Григорианский календарь.
cal
# Довольно простая команда. Показывает свободное пространство на диске (disk free)
df
# Запуск последней команды под root.
# Полезна когда забыли использовать sudo для команды. "!!" — подставляет последнюю введенную команду.
# Но sudo !! — это же не отдельная команда! Это комбинация общеизвестного sudo — и символа повтора предыдущей команды !!
# Кроме !! есть и другие, не менее полезные, команды для работы с историей
# !^ — первый аргумент предыдущей команды;
# !$ — последний аргумент предыдущей команды;
# !* — все аргументы предыдущей команды;
# !-2 — вторая с конца команда. 
# ещё можно открыть history а потом !номер_комманды_в_истории. Удобно искать иногда через history | grep
# Или !git выполнит последнюю команду нгачинающуюся со слова git.
# Искать ещё можно через Ctrl+R !!!
sudo !!
# Запуск HTTP-сервера в текущей директории на 8000 порту. Если в директории нет файла index.html, то будет показан её листинг.
python -m SimpleHTTPServer
# Возврат в предыдущую рабочую директорию. Может пригодиться и для переключения туда-сюда между двумя директориями.
cd -
# Запуск предыдущей команды с заменой в ней подстроки, например, с foo на bar. Полезна при опечатках. Если ввести просто ^foo, то в предыдущей команде первое вхождение foo будет удалено.
^foo^bar
# Утилита My Traceroute эффективнее, чем комбинация traceroute и ping. Утилита mtr сочетает в себе функциональность traceroute и ping, позволяет проводить диагностику сети в более наглядном виде.
mtr google.com
# Запуск редактора для ввода сложной команды или скрипта, выбор редактора определяется переменной $EDITOR
Комбинация 'CTRL+X E'
# Запуск команды с пробелом перед ней не сохраняет ее в истории. Может пригодиться при передаче паролей программам в открытом виде.
<пробел>команда
# Переинициализация терминала без завершения текущей сессии. Например, в случае когда в терминал были выведены двоичные данные и он перестал корректно работать.
reset
# одной командой установить сразу несколько пакетов .deb
sudo dpkg -i /home/user/soft/ntlmaps_*.deb
# сконфигурировать.deb
debconf
# установка .rpm пакетов
alien
# перезапуск службы сетевых устройств
service networking restart
# фал с настроками сетевых устройств 
sudo more /etc/network/interfaces
# просмотр фала постранично, enter - перемещение на строку, пробел - перемешение на экран
more 1.txt
# просмотр сетевых интерфесов
ifconfig
# ?
chroot
# изменение прав доступа
chmod 666 1.txt
# передать вывод в конец файла
echo 'hello' >> 1.txt
# передать вывод в файл
echo 'hello' > 1.txt
# создать новый файл
touch 1.txt
# Создает пустой файл. Уничтожает содержимое файла без его удаления.
> file.txt
# программа для создания загрузочных дисков
sudo apt install unetbootin
# команды позваляющие многопоточно запускать приложения, команды
xargs
parallel
# отличная оболочка для медиа приставки
sudo apt install kodi
# парсер json
jq
# тектовый редакток, не графический
nano
# запустить что-то типа far или total commander
mc
# посмотреть содержимое файла
cat file.txt
# посмотреть содержимое файла в обратном порядке
tac file.txt
# узнать вес файла или папки
du file.txt
# посмотреть информацию об файле
file file.txt
# можно узнать количество символов в строке, а также количество строк, слов и байтов в файле
echo "c78298c2f2e5b1ea6065242da4d8056f" | wc
# вычислить md5
echo 'qweqwe' | md5sum
# фтп клиент
filezilla
# сделать файл исполняемым
sudo chmod +x test2.sh
# установка FTP сервера
sudo apt-get install vsftpd
# монтирование фтп
curlftpfs ekb:cb4yb5wf@127.0.0.1/files ~/ftp
# монтирование MTP устройства
sudo jmtpfs ~/camera
# размонтирование ptp устройства
fusermount -u ~/camera
rmdir ~/camera
# монтирование ptp устройства
mkdir ~/camera
gphotofs ~/camera
# удалить все файлы с MTP или PTP устройства
gphoto2 --delete-all-files --recurse --folder "/store_00010001/DCIM"
# скопировать все файлы с MTP или PTP устройства
gphoto2 --get-all-files --skip-existing --folder "/store_00010001/DCIM"
#  посмотреть ифнормацию об усб устройстве
udevadm info -q all -n /dev/bus/usb/001/010
# монтирование сьемного блочного устройства. http://manpages.ylsoftware.com/ru/pmount.1.html
pmount
# переместить все картинки вдругую папку соблюдая иерархию папок
mv -R /mnt/camera/*.jpg "/home/anton/photo/path/"
# копировать папку и все содержимое в другую папку
cp -R ~/folder ~/folder2
# поиск файлов
find / -name 'какойто-файл.txt'
# ?
cut
# ?
grep
# список залогиненных пользователей
users
# всплывающее сообщение
notify-send "Привет"
# позвалаяет создавать простые диалоговые окна
zenity --title "Всем привет" --entry --text "Как у вас дела?"
# посмотреть подключенные усб устройства
lsusb
# посмотреть информацию о файловой системе?
stat /run/user/1000/gvfs
# просмотреть версию ОС
lsb_release
cat /etc/lsb-release
# программа позволяющая просканировать подсеть ип адресов на открытые порты
nmap 37.112.101.42-255 -p1-10000
# программа для поиска удаленных данных на диске, настройки поиска указываются в scalpel.conf
sudo apt install scalpel
scalpel /dev/sda1 -o scalpel
# установить торрент клиент
sudo apt install qbittorrent
# посмотреть список процессов и их ид
top
# убить процесс по его ид
kill 3393
# process kill завершает запущенный процесс. Эта команда особенно полезна, когда приложение не отвечает:
pkill [application_name]
# удалить папку и все в ней
sudo rm -rf ~/ftp
# изменить владельца и группу папки, с -R ключем все подпапки и файлы внутри тоже поменяют владельца
sudo chown -R anton:anton ~/ftp
# создать папку
sudo mkdir ~/ftp
# монтирование и размонтирование дисков
sudo mount /dev/sda2 /mnt
sudo umount /mnt
# виртуальная машина
sudo apt install virtualbox
# создать ссылку на папку
ln -s /media/anton/Data1/Видео ~/Видео
# скопировать все MPEG файлы из кэша мозилы, причем многопоточно
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
