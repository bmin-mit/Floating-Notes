import 'dart:developer';

import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:floating_notes/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_bloc_observer.dart';

class App extends StatelessWidget {
  App({super.key});

  final NotesRepository notesRepository = NotesRepository();

  final seedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: notesRepository,
      child: MaterialApp(
        title: 'Floating Notes',
        themeMode: ThemeMode.system,
        theme: _buildTheme(Brightness.light),
        darkTheme: _buildTheme(Brightness.dark),
        home: Material(
          child: RepositoryProvider(
            create: (context) => notesRepository,
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: brightness,
      ),
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          // Apply this to every platforms you need.
        },
      ),
    );
  }
}
