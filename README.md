Создание Django приложения
1) Разверните репозиторий со своим проектом в директориию /home/box/web

2) В директории /home/box/web  с помощью утилиты django-admin.py создайте новый Django-проект с названием ask

3) Внутри директории проекта создайте приложени с название qa  (questions and answers)

C учетом директорий созданных на предыдущих задания, должна получится следующая структура директорий.


.
├── ask
│   ├── ask
│   ├── manage.py
│   └── qa
├── etc
├── public
└── uploads

4) В файле ask/qa/views.py создайте тестовый контроллер со следующим содержимым:


from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('OK')
5) Добавьте в urls.py  маршрут для следующих URL

/
/login/
/signup/
/question/<123>/    # вместо <123> - произвольный ID
/ask/
/popular/
/new/
6) Настройте Gunicorn таким образом, что бы он запускал ваше Django-приложение по адресу 0.0.0.0:8000 . (старый hello-world скрипт останется работать на порту 8080).  Nginx должен проксировать запросы как в предыдущем задании.

В результате ваше Django приложение должно отдавать по URL вида http://127.0.0.1/question/<123>/  страницы с кодом 200.  Содержимое страницы не имеет значение - главное, что был хотя бы 1 символ. По URL, не указанным в urls.py, ваше приложение должно возвращать код HTTP 404.


7) Не забудьте закомитить и сохранить на github полученную структуру директорий и конфиги.



1. Вместо символических ссылок сделал так: 
    В файле--> sudo nano /etc/nginx/nginx.conf
    захешировал(можно просто удалить) -->#include /etc/nginx/conf.d/*.conf;
                                      -->#include /etc/nginx/sites-enabled/*;
    добавил      --> include /home/box/web/etc/nginx.conf;

2. git clone https://github.com/your_account/stepic_web_project.git /home/box/web
3. bash /home/box/web/init.sh
4. Если что то пошло не так выполнить cd /home/box/web/
 и запустить sudo gunicorn -c gunicorn.conf hello:app
