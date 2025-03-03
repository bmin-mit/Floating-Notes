import 'package:floating_notes/src/blocs/notes/notes_bloc.dart';
import 'package:floating_notes/src/widgets/notes/note_create_button.dart';
import 'package:floating_notes/src/widgets/notes/note_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              NotesBloc(noteRepository: context.read())
                ..add(NotesSubscriptionRequested()),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(children: [NoteList()]),
              Positioned(right: 16, bottom: 16, child: NoteCreateButton()),
            ],
          ),
        ),
      ),
    );
  }
}
