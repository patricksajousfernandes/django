from django.urls import path
from notes.views import all_notes

urlpatterns = [
    path('notes/', all_notes, name='all_notes'),
]
