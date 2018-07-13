from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^list/$', views.list),
    url(r'^(?P<article_id>[0-9]+)/$', views.detail, name='detail'),
    url(r'^edit/(?P<article_id>[0-9]+)/', views.edit, name='edit'),
    url(r'^edit_action/$', views.edit_action, name='edit_action'),
]
