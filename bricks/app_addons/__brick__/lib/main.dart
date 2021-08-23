import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'app/app.dart';
import 'app/router.dart';
import 'app/app_bloc_observer.dart';
import 'core/constants/app.dart';
import 'core/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configure();

  final AppRouter appRouter = AppRouter();

  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
    );
  };

  runZonedGuarded(
    () => runApp(App(
      appRouter: appRouter,
    )),
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
    ),
  );

  if (Platform.isWindows) {
    doWhenWindowReady(() {
      final win = appWindow;
      win.alignment = Alignment.center;
      win.title = appTitle;
      win.minSize = const Size(1000, 600);
      win.show();
    });
  }
}
