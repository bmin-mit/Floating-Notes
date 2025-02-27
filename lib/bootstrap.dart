import 'dart:developer';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:floating_notes/src/app/app.dart';
import 'package:floating_notes/src/app/app_bloc_observer.dart';
import 'package:floating_notes/src/resources/notes/notes_repository.dart';
import 'package:flutter/material.dart';

void bootstrap({required NotesProvider notesProvider}) {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    log(error.toString(), stackTrace: stack);
    return true;
  };

  Bloc.observer = AppBlocObserver();

  final notesRepository = NotesRepository(notesProvider: notesProvider);
  runApp(App(notesRepository: notesRepository));
}
