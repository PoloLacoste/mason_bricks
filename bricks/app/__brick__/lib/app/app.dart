import 'package:flutter/material.dart';

import 'package:{{name.snakeCase()}}/core/constants/app.dart';
import 'package:{{name.snakeCase()}}/core/locator.dart';
import 'package:{{name.snakeCase()}}/l10n/l10n.dart';

import 'router.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.router,
  }) : super(key: key);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      color: Colors.blue,
      builder: (context, child) {
        // inject l10n in get it
        if (!locator.isRegistered<AppLocalizations>()) {
          locator.registerSingleton(context.l10n);
        }

        return child!;
      },
      routerDelegate: router.delegate(
        navigatorObservers: () => [],
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
