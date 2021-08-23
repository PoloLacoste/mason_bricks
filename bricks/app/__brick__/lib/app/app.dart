import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/core/constants/app.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/core/locator.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/l10n/l10n.dart';

import 'router.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      color: Colors.blue,
      builder: (context, child) {
        // inject l10n in get it
        if (!locator.isRegistered(
          instance: context.l10n,
        )) {
          locator.registerSingleton(context.l10n);
        }

        return child!;
      },
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [],
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
