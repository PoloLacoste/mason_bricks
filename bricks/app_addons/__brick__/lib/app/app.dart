import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:sizer/sizer.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/core/constants/app.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/core/locator.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/l10n/l10n.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/presentation/widgets/windows_window.dart';

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

        late final Widget widget;

        if (Platform.isWindows) {
          widget = WindowsWindow(
            child: child!,
          );
        } else {
          widget = child!;
        }

        final toastManager = BotToastInit();
        return Sizer(
          builder: (context, orientation, deviceType) {
            return toastManager(
              context,
              widget,
            );
          },
        );
      },
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [
          BotToastNavigatorObserver(),
        ],
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
