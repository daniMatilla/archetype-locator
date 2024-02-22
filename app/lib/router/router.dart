import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:design_system/common/shared_screens.dart';
import 'package:detail/detail.screen.dart';
import 'package:sample/sample.screen.dart';

part 'router.routes.dart';

typedef MapRoute = Map<Screens, GoRoute>;
typedef MapWidget = Map<Screens, Widget>;

final appRouter = GoRouter(
  initialLocation: AppRouter.routes[Screens.home]!.path,
  routes: AppRouter.routes.values.toList(),
);

final class AppRouter {
  static MapRoute routes = {};

  static void registerRoutes({
    required Function callback,
  }) {
    routes.addAll(_appRoutes.map(_mapToGoRoute));
    callback();
  }

  static MapEntry<Screens, GoRoute> _mapToGoRoute(Screens key, Widget value) => MapEntry(
        key,
        GoRoute(
          name: key.name,
          path: key.path ?? '/${key.name}',
          builder: (context, state) => value,
        ),
      );
}
