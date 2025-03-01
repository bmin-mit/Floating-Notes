part of 'notes_repository.dart';

final class NotesProvider {
  final List<Note> _notes = [
    Note(title: 'Title', content: 'Note content'),
    Note(title: 'Title'),
    Note(content: 'Note content'),
  ];

  List<Note> getNotes() {
    return _notes;
  }

  List<Note> addNote(Note note) {
    _notes.add(note);
    return _notes;
  }
}
