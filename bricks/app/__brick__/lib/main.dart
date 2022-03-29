import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';

import 'app/app.dart';
import 'app/router.dart';
import 'app/app_bloc_observer.dart';
import 'core/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configure();

  final router = AppRouter();

  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
    );
  };

  BlocOverrides.runZoned(
    () => runApp(App(
      router: router,
    )),
    blocObserver: AppBlocObserver(),
  );
}
