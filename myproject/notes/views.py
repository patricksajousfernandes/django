from django.shortcuts import render, redirect
from .forms import NoteForm
from .models import Note

def all_notes(request):
    if request.method == 'POST':
        form = NoteForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('all_notes')
    else:
        form = NoteForm()

    notes = Note.objects.all()
    return render(request, 'notes.html', {'form': form, 'notes': notes})
