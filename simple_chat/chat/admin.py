from django.contrib import admin
from .models import Thread, Message


class MessageInline(admin.TabularInline):
    model = Message
    extra = 1
    fields = ['sender', 'text', 'is_read']
    raw_id_fields = ['sender']


@admin.register(Thread)
class ThreadAdmin(admin.ModelAdmin):
    list_display = ['id', 'created', 'updated', 'display_participants']
    list_filter = ['id', 'created', 'updated']
    search_fields = ['id', ]
    inlines = [MessageInline]

    def get_search_results(self, request, queryset, search_term):
        queryset, use_distinct = super().get_search_results(request, 
                                                            queryset, 
                                                            search_term)
        if search_term:
            try:
                user_id = int(search_term)  
                queryset |= self.model.objects.filter(participants__id=user_id)
            except ValueError:
                pass
        return queryset, use_distinct
    
    def display_participants(self, obj):
        return ", ".join([str(user.id) for user in obj.participants.all()])
    
    display_participants.short_description = 'Participants'
