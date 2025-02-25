from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from .models import Posts
from .serializer import PostsSerializer

class PostsViewSet(viewsets.ModelViewSet):
    queryset = Posts.objects.all()
    serializer_class = PostsSerializer
