from rest_framework import viewsets, mixins, status
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import action
from rest_framework.response import Response
from chat.models import Thread, Message
from .serializers import ThreadSerializer, MessageSerializer
from django.contrib.auth.models import User
from django.shortcuts import get_object_or_404
from .pagination import SmallLimitOffsetPagination


class ThreadViewSet(viewsets.GenericViewSet,
                    mixins.ListModelMixin,
                    mixins.CreateModelMixin,
                    mixins.DestroyModelMixin):
    serializer_class = ThreadSerializer
    pagination_class = SmallLimitOffsetPagination
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return Thread.objects.filter(participants=self.request.user)

    def perform_create(self, serializer):
        target_user = get_object_or_404(User, 
                                        id=self.request.data.get(
                                            'target_user_id')
                                        )
        thread_qs = Thread.objects.filter(
            participants=self.request.user.id
        ).filter(participants=target_user.id)
        if thread_qs.exists():
            thread = thread_qs.first()
            serializer.instance = thread
        else:
            thread = serializer.save()
            thread.participants.add(self.request.user, target_user)


class MessageViewSet(viewsets.ModelViewSet):
    queryset = Message.objects.all()
    serializer_class = MessageSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        thread_id = self.kwargs.get('thread_id')
        if thread_id:
            return self.queryset.filter(thread_id=thread_id)
        return self.queryset

    def perform_create(self, serializer):
        thread_id = self.kwargs.get('thread_id')
        thread = get_object_or_404(Thread, pk=thread_id)
        serializer.save(sender=self.request.user, thread=thread)

    @action(detail=True, methods=['patch'])
    def read(self, request, pk=None):
        message = self.get_object()
        message.is_read = True
        message.save()
        return Response({'status': 'message read'}, status=status.HTTP_200_OK)

    @action(detail=False, methods=['get'])
    def unread_count(self, request):
        user_threads = Thread.objects.filter(participants=request.user)
        count = Message.objects.filter(
            thread__in=user_threads, 
            is_read=False
        ).exclude(sender=request.user).count()
        return Response({"unread_messages_count": count})
