import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'editing_note_event.dart';

part 'editing_note_state.dart';

class EditingNoteBloc extends Bloc<EditingNoteEvent, EditingNoteState> {
  EditingNoteBloc() : super(EditingNoteState()) {
    on<EditingNoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
