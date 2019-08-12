sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web;  sudo gunicorn -c gunicorn.conf hello:app &
cd /home/box/web/ask ; sudo gunicorn -c gunicorn.conf wsgi:app &
cd /home/box/web/ask; python3 manage.py runserver

