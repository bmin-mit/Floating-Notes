part of 'notes_bloc.dart';

@immutable
final class NotesState {
  const NotesState();
}

final class NotesStateLoaded extends NotesState {
  final List<Note> notes;

  const NotesStateLoaded({required this.notes});
}

final class NotesStateCreated extends NotesState {
  final Note note;

  const NotesStateCreated({required this.note});
}
