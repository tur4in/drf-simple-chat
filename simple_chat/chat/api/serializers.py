from rest_framework import serializers
from chat.models import Thread, Message


class ThreadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Thread
        fields = '__all__'
        read_only_fields = ['id', 'created', 'updated', 'participants']

    def validate(self, attrs):
        if 'participants' in attrs:
            participants = attrs['participants']
            if len(participants) > 2:
                raise serializers.ValidationError("A thread can't have more than 2 participants.")
        return attrs


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = '__all__'
        read_only_fields = ['id', 'created', 'updated', 'sender', 'thread']