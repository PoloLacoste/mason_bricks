import 'package:auto_route/auto_route.dart';

import 'package:{{name.snakeCase()}}/presentation/pages/home/home.dart';

export 'package:auto_route/auto_route.dart';
export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    AutoRoute<void>(
      page: HomePage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
