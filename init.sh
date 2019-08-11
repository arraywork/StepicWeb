sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web; sudo gunicorn - b 0.0.0.0:8080 hello:app
cd /home/box/web/ask; python3 manage.py runserver
