sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web
sudo gunicorn -c gunicorn.conf hello:app