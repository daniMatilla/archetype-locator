import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

typedef MapRoute = Map<String, GoRoute>;

final class SharedRoute {
  static MapRoute sharedRoutes = {};

  static void registerRoutes({
    required Map<String, Widget> routes,
    required Function setUpModules,
  }) {
    sharedRoutes.addAll(routes.map(_mapToGoRoute));
    setUpModules();
  }

  static MapEntry<String, GoRoute> _mapToGoRoute(String key, Widget value) =>
      MapEntry(
        key,
        GoRoute(
          name: key,
          path: '/$key',
          builder: (context, state) => value,
        ),
      );

  // Screens
  static const String home = 'home';
  static const String detail = 'detail';
}
