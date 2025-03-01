import 'package:floating_notes/src/screens/note_create.dart';
import 'package:flutter/material.dart';

class NoteCreateButton extends StatelessWidget {
  const NoteCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FloatingActionButton(
      onPressed: _navigateToCreateNote(context),
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      child: const Icon(Icons.add, size: 28),
    );
  }

  _navigateToCreateNote(BuildContext context) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const NoteCreateScreen()),
      );
    };
  }
}
