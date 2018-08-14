# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from . import models
from .models import Article


class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'content', 'post_time')
    list_filter = ('post_time',)


# Register your models here.
# admin.site.register(Article)
admin.site.register(Article, ArticleAdmin)
