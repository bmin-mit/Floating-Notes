part of 'notes_repository.dart';

final class NotesProvider {
  final List<Note> _notes = [
    Note(title: 'Title', content: 'Note content ', date: DateTime.now()),
  ];

  List<Note> getNotes() {
    return _notes;
  }

  List<Note> addNote(Note note) {
    _notes.add(note);
    return _notes;
  }
}
