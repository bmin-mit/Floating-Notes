import 'package:bloc/bloc.dart';
import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:meta/meta.dart';

import 'package:floating_notes/src/models/note.dart';

part 'notes_event.dart';

part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final NotesRepository _notesRepository;

  NotesBloc({required NotesRepository noteRepository})
    : _notesRepository = noteRepository,
      super(NotesState()) {
    on<NotesEventFetch>(_onFetchNotes);
    on<NotesEventCreate>(_onCreateNote);
    on<NotesEventUpdate>(_onEditNote);
  }

  void _onFetchNotes(NotesEventFetch event, Emitter<NotesState> emit) {
    emit(NotesStateFetched(notes: _notesRepository.getNotes()));
  }

  void _onCreateNote(NotesEventCreate event, Emitter<NotesState> emit) {
    final note = _notesRepository.createNote();
    emit(NotesStateCreated(note: note));
    emit(NotesStateFetched(notes: _notesRepository.getNotes()));
  }

  void _onEditNote(NotesEventUpdate event, Emitter<NotesState> emit) {
    final note = _notesRepository.updateNote(event.note);
    emit(NotesStateUpdated(note: note));
    emit(NotesStateFetched(notes: _notesRepository.getNotes()));
  }
}
