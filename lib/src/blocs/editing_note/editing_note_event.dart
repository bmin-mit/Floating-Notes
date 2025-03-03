part of 'editing_note_bloc.dart';

@immutable
sealed class EditingNoteEvent {}

final class EditingNoteEventCreate extends EditingNoteEvent {}
