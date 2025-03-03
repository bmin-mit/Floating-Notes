part of 'notes_bloc.dart';

@immutable
final class NotesState {
  const NotesState();
}

final class NotesStateFetched extends NotesState {
  final List<Note> notes;

  const NotesStateFetched({required this.notes});
}

final class NotesStateCreated extends NotesState {
  final Note note;

  const NotesStateCreated({required this.note});
}

final class NotesStateUpdated extends NotesState {
  final Note note;

  const NotesStateUpdated({required this.note});
}

final class NotesStateDeleted extends NotesState {
  final Note note;

  const NotesStateDeleted({required this.note});
}
