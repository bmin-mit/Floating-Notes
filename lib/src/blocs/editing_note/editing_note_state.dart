part of 'editing_note_bloc.dart';

enum EditingNoteStatus { initial, loading, success, failure }

@immutable
final class EditingNoteState {
  final EditingNoteStatus status;

  const EditingNoteState({this.status = EditingNoteStatus.initial});
}
