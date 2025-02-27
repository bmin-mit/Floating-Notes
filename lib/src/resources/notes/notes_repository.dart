import 'package:floating_notes/src/models/note.dart';

part 'notes_provider.dart';

class NotesRepository {
  final NotesProvider _notesProvider;

  const NotesRepository({required NotesProvider notesProvider})
    : _notesProvider = notesProvider;

  List<Note> getNotes() {
    return _notesProvider.getNotes();
  }
}
