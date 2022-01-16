# {}부분은 마음대로 넣어도 됨

pip install django djangorestframework
django-admin startproject {djangoapi} # 이렇게 하면 djnagoapi 새폴더가 생김. 안생기려면 명령 끝에 띄우고 쩜(.)을 찍어주면 됨
python manage.py startapp {plan}
python manage.py makemigrations # settings 추가한것들을 DB 반영
python manage.py migrate
python manage.py createsuperuser # 비밀번호 1234 했음
