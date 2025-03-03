import 'dart:developer';

import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:floating_notes/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:floating_notes/src/blocs/notes/notes_bloc.dart';

part 'app_bloc_observer.dart';

class App extends StatelessWidget {
  const App({super.key});

  final seedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotesBloc>(
          create:
              (BuildContext context) =>
                  NotesBloc(noteRepository: NotesRepository()),
        ),
      ],

      child: MaterialApp(
        title: 'Floating Notes',
        themeMode: ThemeMode.system,
        theme: _buildTheme(Brightness.light),
        darkTheme: _buildTheme(Brightness.dark),
        home: Material(child: HomeScreen()),
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: brightness,
      ),
      fontFamily: 'Product Sans',
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
          // Apply this to every platforms you need.
        },
      ),
    );
  }
}
