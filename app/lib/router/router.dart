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

  static final shellRoute = [
    ShellRoute(
      builder: (context, state, child) => ShellRouteScreen(screen: child),
      routes: AppRouter.appRoutes.values.toList(),
    )
  ];

  static void registerRoutes({required Function() callback, bool useShellRoute = false}) {
    AppRouter.useShellRoute = useShellRoute;
    appRoutes.addAll(_appRoutes.map(_mapToGoRoute));
    callback();
  }

  static List<RouteBase> get routes => useShellRoute ? AppRouter.shellRoute : AppRouter.appRoutes.values.toList();

  static MapEntry<SharedRoutes, GoRoute> _mapToGoRoute(SharedRoutes sharedRoutes, Widget widget) => MapEntry(
        sharedRoutes,
        GoRoute(
          name: sharedRoutes.name,
          path: sharedRoutes.path,
          builder: (context, state) => widget,
        ),
      );
}

class ShellRouteScreen extends StatelessWidget with Navigation {
  ShellRouteScreen({super.key, required this.screen});
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    final List<SharedRoutes> routes = SharedRoutes.values.where((element) => element.isBottomBarOption >= 0).toList()
      ..sort((a, b) => a.isBottomBarOption - b.isBottomBarOption);

    return Scaffold(
      body: screen,
      bottomNavigationBar: CustomBottomNavigation(
        items: routes,
        onTab: (sharedRoute) => setRootScreen(sharedRoute),
      ),
    );
  }
}
