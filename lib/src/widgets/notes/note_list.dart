import 'package:floating_notes/src/models/note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/notes/notes_bloc.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.notes.length,
            padding: EdgeInsets.symmetric(horizontal: 8),
            separatorBuilder: (context, index) => SizedBox(height: 8),
            itemBuilder: (context, index) {
              return NoteTile(note: state.notes[index]);
            },
          );
        },
      ),
    );
  }
}

class NoteTile extends StatelessWidget {
  final Note note;

  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: ListTile(title: Text(note.title), subtitle: Text(note.content)),
    );
  }
}
