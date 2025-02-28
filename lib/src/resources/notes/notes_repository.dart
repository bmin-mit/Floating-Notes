import 'package:floating_notes/src/models/note.dart';

part 'notes_provider.dart';

class NotesRepository {
  final NotesProvider _notesProvider;

  NotesRepository({NotesProvider? notesProvider})
    : _notesProvider = notesProvider ?? NotesProvider();

  List<Note> getNotes() {
    return _notesProvider.getNotes();
  }
}
