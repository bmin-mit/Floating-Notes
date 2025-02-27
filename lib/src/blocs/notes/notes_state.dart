part of 'notes_bloc.dart';

@immutable
final class NotesState {
  const NotesState({this.notes = const []});

  final List<Note> notes;

  NotesState copyWith({Function()? notes}) {
    return NotesState(notes: notes?.call() ?? this.notes);
  }
}
