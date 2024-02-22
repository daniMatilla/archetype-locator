import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:design_system/common/shared_routes.dart';
import 'package:detail/detail.screen.dart';
import 'package:sample/sample.screen.dart';

part 'router.routes.dart';

typedef MapRoute = Map<SharedRoutes, GoRoute>;
typedef MapWidget = Map<SharedRoutes, Widget>;

final appRouter = GoRouter(
  initialLocation: AppRouter.routes[SharedRoutes.home]!.path,
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

  static MapEntry<SharedRoutes, GoRoute> _mapToGoRoute(SharedRoutes key, Widget value) => MapEntry(
        key,
        GoRoute(
          name: key.name,
          path: key.path ?? '/${key.name}',
          builder: (context, state) => value,
        ),
      );
}
