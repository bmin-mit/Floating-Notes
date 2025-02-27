part of 'notes_repository.dart';

final class NotesProvider {
  List<Note> getNotes() {
    return [Note(title: 'Note 1', content: 'new note', date: DateTime.now())];
  }
}
