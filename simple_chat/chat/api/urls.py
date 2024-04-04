from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import ThreadViewSet,  MessageViewSet


router = DefaultRouter()
router.register(r'threads', ThreadViewSet, basename='thread')

message_list = MessageViewSet.as_view({
    'get': 'list',
    'post': 'create',
})

message_detail = MessageViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy',
})

urlpatterns = [
    path('', include(router.urls)),
    path('threads/<int:thread_id>/messages/', 
         message_list, 
         name='message-list'),
    path('threads/<int:thread_id>/messages/<int:pk>/', 
         message_detail, 
         name='message-detail'),
    path('messages/<int:pk>/read/', 
         MessageViewSet.as_view({'patch': 'read'}),
         name='message-read'),
    path('messages/unread_count/', 
         MessageViewSet.as_view({'get': 'unread_count'}),
         name='message-read'),
]