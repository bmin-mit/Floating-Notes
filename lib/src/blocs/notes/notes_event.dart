part of 'notes_bloc.dart';

@immutable
sealed class NotesEvent {}

final class NotesEventFetch extends NotesEvent {}

final class NotesEventCreate extends NotesEvent {}

final class NotesEventUpdate extends NotesEvent {
  final Note note;

  NotesEventUpdate({required this.note});
}
