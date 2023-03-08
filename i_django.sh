git clone https://github.com/CerBeer/s_2_1.git /home/box/web
cd /home/box/web
django-admin startproject ask
cd ask
sudo python3.5 manage.py startapp qa
cd ..

git config --global user.email "stepik@example.com"
git config --global user.name "stepik"
git add .
git commit -m "create ask and qa"
