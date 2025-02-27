import 'package:bloc/bloc.dart';
import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:meta/meta.dart';

import '../../models/note.dart';

part 'notes_event.dart';

part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final NotesRepository _notesRepository;

  NotesBloc({required NotesRepository noteRepository})
    : _notesRepository = noteRepository,
      super(NotesState()) {
    on<NotesSubscriptionRequested>(_onNotesSubscriptionRequested);
  }

  void _onNotesSubscriptionRequested(
    NotesSubscriptionRequested event,
    Emitter<NotesState> emit,
  ) {
    emit(state.copyWith());

    emit(state.copyWith(notes: () => _notesRepository.getNotes()));
  }
}
