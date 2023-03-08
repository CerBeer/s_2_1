# sudo chmod a+x ./i_django.sh
# sudo chmod a+x ./i_gunicorn.sh
# sudo chmod a+x ./i_nginx.sh

sudo apt-get update
sudo apt-get install -y mc
sudo apt-get install -f -y python3.5
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo curl "https://bootstrap.pypa.io/pip/3.5/get-pip.py" -o "get-pip.py"
sudo python3.5 get-pip.py
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
sudo pip3 install --upgrade mysqlclient

bash ./i_django.sh