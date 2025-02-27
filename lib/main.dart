import 'package:floating_notes/bootstrap.dart';
import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final notesProvider = NotesProvider();

  bootstrap(notesProvider: notesProvider);
}
