import 'package:floating_notes/src/models/note.dart';
import 'package:floating_notes/src/widgets/notes/note_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/notes/notes_bloc.dart';

class NoteEditScreen extends StatelessWidget {
  const NoteEditScreen({super.key, this.note});

  final Note? note;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          context.read<NotesBloc>()..add(
            note == null
                ? NotesEventCreate()
                : NotesEventUpdate(noteId: note!.id),
          ),
      child: SafeArea(child: Scaffold(appBar: AppBar(), body: NoteEditor())),
    );
  }
}
