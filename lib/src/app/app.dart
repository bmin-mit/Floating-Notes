import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:floating_notes/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({required this.notesRepository, super.key});

  final NotesRepository notesRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: notesRepository,
      child: MaterialApp(
        title: 'Floating Notes',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: Material(
          child: RepositoryProvider(
            create: (context) => notesRepository,
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
