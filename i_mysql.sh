sudo pip3 install --upgrade mysqlclient
sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE DATABASE stepic_web;"
mysql -uroot -e "GRANT ALL PRIVILEGES ON stepic_web.* TO 'box'@'localhost' WITH GRANT OPTION;"
python3 manage.py makemigrations qa
python3 manage.py migrate
# sudo /etc/init.d/gunicorn restart
# sudo gunicorn --bind='0.0.0.0:8000' ask.wsgi:application
#sudo -c gunicorn --bind='0.0.0.0:8080' hello:app
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test