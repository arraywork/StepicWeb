sudo apt-get update
sudo apt-get install -y python3.5
sudo apt-get install -y python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web;  sudo gunicorn -c gunicorn.conf hello:app &
cd /home/box/web/ask ; sudo gunicorn -c gunicorn.conf wsgi:app &
cd /home/box/web/ask; python3 manage.py runserver 0.0.0.0:8000

