import 'package:flutter/material.dart';

class NoteEditor extends StatelessWidget {
  const NoteEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: const [NoteTitleField(), Expanded(child: NoteContentField())],
    );
  }
}

final class NoteTitleField extends StatelessWidget {
  const NoteTitleField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      style: theme.textTheme.headlineSmall,
      decoration: InputDecoration(
        isDense: true,
        hintText: 'Title',
        hintStyle: TextStyle(color: theme.colorScheme.onSurface.withAlpha(150)),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}

class NoteContentField extends StatelessWidget {
  const NoteContentField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      style: theme.textTheme.bodyMedium,
      maxLines: null,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
        hintText: 'Note',
        hintStyle: TextStyle(color: theme.colorScheme.onSurface.withAlpha(150)),
      ),
    );
  }
}
