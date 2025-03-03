import 'package:floating_notes/src/models/note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:floating_notes/src/blocs/notes/notes_bloc.dart';
import 'package:floating_notes/src/screens/note_edit.dart';

final class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  void didChangeDependencies() {
    context.read<NotesBloc>().add(NotesEventFetch());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          if (state is NotesStateFetched) {
            return _buildList(state);
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildList(NotesStateFetched state) {
    return ListView.separated(
      itemCount: state.notes.length,
      padding: EdgeInsets.symmetric(horizontal: 8),
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemBuilder: (context, index) {
        return NoteTile(note: state.notes[index]);
      },
    );
  }
}

final class NoteTile extends StatelessWidget {
  final Note note;

  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    if (note.title.isEmpty) {
      return NoteTileButton(
        note: note,
        child: ListTile(title: NoteTileContent(content: note.content)),
      );
    }

    return NoteTileButton(
      note: note,
      child: ListTile(
        title:
            note.title.isNotEmpty
                ? Padding(
                  padding:
                      note.content.isNotEmpty
                          ? EdgeInsets.only(bottom: 8)
                          : EdgeInsets.zero,
                  child: NoteTileTitle(title: note.title),
                )
                : null,
        subtitle:
            note.content.isNotEmpty
                ? NoteTileContent(content: note.content)
                : null,
      ),
    );
  }
}

final class NoteTileButton extends StatelessWidget {
  final Widget? child;
  final Note note;

  const NoteTileButton({super.key, this.child, required this.note});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      onPressed: _navigateToEditNote(context),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        side: BorderSide(color: theme.colorScheme.outline.withAlpha(128)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: child,
    );
  }

  VoidCallback _navigateToEditNote(BuildContext context) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => NoteEditScreen(note: note)),
      );
    };
  }
}

final class NoteTileTitle extends StatelessWidget {
  final String title;

  const NoteTileTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontWeight: FontWeight.w500));
  }
}

final class NoteTileContent extends StatelessWidget {
  final String content;

  const NoteTileContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      content,
      style: TextStyle(
        color: theme.colorScheme.onSurface,
        fontSize: theme.textTheme.bodyMedium!.fontSize,
      ),
    );
  }
}
