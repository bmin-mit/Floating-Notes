import 'package:flutter/material.dart';

class NoteCreateButton extends StatelessWidget {
  const NoteCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add));
  }
}
