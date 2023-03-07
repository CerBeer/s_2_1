# s_2_1

И еще по проверке на работоспособность:

curl -vv 127.0.0.1:8080/?a=1&a=2&b=3 - запрос отправляется напрямую к gunicorn
curl -vv 127.0.0.1/hello/?a=b - проверяем работает и проксирует ли nginx

gunicorn можно запускать командой gunicorn -c /path/to/config hello:application, но обязательно необходимо, что бы hello.py(wsgi который отвечает на запросы) был в той же папке откуда вызывается команда.
Чтобы не висла консоль можно запускать в фоновом режиме: gunicorn -b 0.0.0.0:8080 hello:app &

перезапустить gunicorn: sudo ps aux ﻿| grep gunicorn, ﻿и стопаете первый по порядку процесс, например: ﻿kill 33

git init

git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/CerBeer/s_1_9.git
git push -u origin main
git status

git commit -m "text"
git push -u origin master


sudo apt-get update
sudo apt-get install -f python3.5
sudo curl "https://bootstrap.pypa.io/pip/3.5/get-pip.py" -o "get-pip.py"
sudo python3.5 get-pip.py
sudo pip install django
#Successfully installed django-2.2.28 pytz-2022.7.1 sqlparse-0.4.3
sudo pip install gunicorn
#Successfully installed gunicorn-20.1.0

sudo unlink /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-available/default



rm -rf /home/box/web
git clone https://github.com/CerBeer/s_2_1.git /home/box/web
chmod a+x /home/box/web/init.sh
/home/box/web/init.sh
cd /home/box/web
sudo ./init.sh
sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_application

nginx configtest
pkill nginx
