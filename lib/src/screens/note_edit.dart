import 'package:floating_notes/src/models/note.dart';
import 'package:floating_notes/src/widgets/notes/note_editor.dart';
import 'package:flutter/material.dart';

class NoteEditScreen extends StatefulWidget {
  const NoteEditScreen({super.key, this.note});

  final Note? note;

  @override
  State<NoteEditScreen> createState() => _NoteEditScreenState();
}

class _NoteEditScreenState extends State<NoteEditScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(), body: NoteEditor(note: Note())),
    );
  }
}
