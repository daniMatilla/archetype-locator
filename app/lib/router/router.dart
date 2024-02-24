import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:design_system/common/shared_routes.dart';
import 'package:detail/detail.screen.dart';
import 'package:locator/locator.dart';
import 'package:sample/cubit/sample_cubit.dart';
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
    required Function() callback,
  }) {
    routes.addAll(_appRoutes.map(_mapToGoRoute));
    callback();
  }

  static MapEntry<SharedRoutes, GoRoute> _mapToGoRoute(SharedRoutes sharedRoutes, Widget widget) => MapEntry(
        sharedRoutes,
        GoRoute(
          name: sharedRoutes.name,
          path: sharedRoutes.path ?? '/${sharedRoutes.name}',
          builder: (context, state) => widget,
        ),
      );
}
