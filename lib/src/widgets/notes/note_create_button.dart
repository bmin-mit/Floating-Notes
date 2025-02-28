import 'package:floating_notes/src/screens/note_create.dart';
import 'package:flutter/material.dart';

class NoteCreateButton extends StatelessWidget {
  const NoteCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const NoteCreateScreen()),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
