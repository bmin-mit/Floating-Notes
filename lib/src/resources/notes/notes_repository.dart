import 'package:floating_notes/src/models/note.dart';

part 'notes_provider.dart';

class NotesRepository {
  final NotesProvider _notesProvider;

  NotesRepository({NotesProvider? notesProvider})
    : _notesProvider = notesProvider ?? NotesProvider();

  List<Note> getNotes() {
    return _notesProvider.getNotes();
  }

  List<Note> addNote(Note note) {
    return _notesProvider.addNote(note);
  }

  Note createNote() {
    final note = Note();
    addNote(note);

    return note;
  }
}
