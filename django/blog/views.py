# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from django.http import HttpResponse
from . import models


# Create your views here.
def list(request):
    # return HttpResponse('hello world')
    # return render(request, 'blog/list.html', {'hello': 'hello,django'})
    # article = models.Article.objects.get(pk=1)
    # return render(request, 'blog/list.html', {'hello': 'hello，django', 'article': article})
    articles = models.Article.objects.all()
    return render(request, 'blog/list.html', {'articles': articles})


def detail(request, article_id):
    article = models.Article.objects.get(pk=article_id)
    return render(request, 'blog/detail.html', {'article': article})


def edit(request, article_id):
    if article_id == '0':
        return render(request, 'blog/edit.html')
    article = models.Article.objects.get(pk=article_id)
    return render(request, 'blog/edit.html', {'article': article})


def edit_action(request):
    id = request.POST['id']
    title = request.POST['title']
    content = request.POST['content']
    if id == '':
        models.Article.objects.create(title=title, content=content)
        articles = models.Article.objects.all()
        return render(request, 'blog/list.html', {'articles': articles})

    article = models.Article.objects.get(pk=id)
    article.title = title
    article.content = content
    article.save()
    return render(request, 'blog/detail.html', {'article': article})
