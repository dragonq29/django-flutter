#이 파일의 정의들은 프로젝트인 djangoapi의 urls.py의 하위인 파일임
from django.urls import path, include
from . import views
from rest_framework import routers
router = routers.DefaultRouter(trailing_slash=False)
routers.register('plan', views.TodoView)
urlpatterns = [
    path('', include(router.urls)),
]
