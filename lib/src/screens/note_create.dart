import 'package:floating_notes/src/widgets/notes/note_editor.dart';
import 'package:flutter/material.dart';

class NoteCreateScreen extends StatelessWidget {
  const NoteCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(), body: NoteEditor()));
  }
}
