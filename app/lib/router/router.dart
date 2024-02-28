import 'package:design_system/common/navigation.dart';
import 'package:design_system/views/views.barrel.dart';
import 'package:favorite/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:design_system/common/shared_routes.dart';
import 'package:locator/locator.dart';
import 'package:sample/cubit/sample_cubit.dart';
import 'package:sample/sample.screen.dart';
import 'package:favorite/screens/favorite.barrel.dart';

part 'router.routes.dart';

typedef MapRoute = Map<SharedRoutes, GoRoute>;
typedef MapWidget = Map<SharedRoutes, Widget>;

final appRouter = GoRouter(
  initialLocation: SharedRoutes.home.path,
  routes: AppRouter.routes,
);

final class AppRouter {
  static late bool useShellRoute;
  static MapRoute appRoutes = {};
  static List<RouteBase> routes = List.empty(growable: true);

  static void registerRoutes({required Function() callback, bool useShellRoute = false}) {
    AppRouter.useShellRoute = useShellRoute;
    appRoutes.addAll(_appRoutes.map(_mapToGoRoute));
    if (useShellRoute) {
      routes = [
        ..._appRoutes.map(_mapToBranch).values.map((e) => e.route).nonNulls,
        StatefulShellRoute.indexedStack(
          branches: _appRoutes.map(_mapToBranch).values.map((e) => e.branch).nonNulls.toList(),
          builder: (context, state, navigationShell) => ShellRouteScreen(screen: navigationShell),
        ),
      ];
    } else {
      routes = _appRoutes.map(_mapToGoRoute).values.toList();
    }
    callback();
  }

  static MapEntry<SharedRoutes, GoRoute> _mapToGoRoute(
    SharedRoutes sharedRoutes,
    Widget widget,
  ) =>
      MapEntry(
        sharedRoutes,
        GoRoute(name: sharedRoutes.name, path: sharedRoutes.path, builder: (context, state) => widget),
      );

  static MapEntry<SharedRoutes, ({StatefulShellBranch? branch, GoRoute? route})> _mapToBranch(
    SharedRoutes sharedRoutes,
    Widget widget,
  ) =>
      MapEntry(
        sharedRoutes,
        (
          branch: sharedRoutes.isBottomBarOption >= 0
              ? StatefulShellBranch(
                  routes: [
                    GoRoute(name: sharedRoutes.name, path: sharedRoutes.path, builder: (context, state) => widget),
                  ],
                )
              : null,
          route: sharedRoutes.isBottomBarOption < 0
              ? GoRoute(name: sharedRoutes.name, path: sharedRoutes.path, builder: (context, state) => widget)
              : null
        ),
      );
}

class ShellRouteScreen extends StatelessWidget with Navigation {
  ShellRouteScreen({super.key, required this.screen});
  final StatefulNavigationShell screen;

  @override
  Widget build(BuildContext context) {
    final List<SharedRoutes> items = SharedRoutes.values.where((element) => element.isBottomBarOption >= 0).toList()
      ..sort((a, b) => a.isBottomBarOption - b.isBottomBarOption);

    return Scaffold(
      body: screen,
      bottomNavigationBar: CustomBottomNavigation(
        items: items,
        currentIndex: screen.currentIndex,
        onTab: (sharedRoute) => setRootScreen(sharedRoute),
      ),
    );
  }
}
