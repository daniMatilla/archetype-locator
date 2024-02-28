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

typedef MapScreen = Map<SharedRoutes, Widget>;
typedef MapBranch = MapEntry<SharedRoutes, StatefulShellBranch>;

final appRouter = GoRouter(
  initialLocation: SharedRoutes.home.path,
  routes: AppRouter.routes,
);

final class AppRouter {
  static List<RouteBase> routes = List.empty(growable: true);

  static void registerRoutes({required Function() callback}) {
    routes = [
      StatefulShellRoute.indexedStack(
        branches: _appRoutes.map(_mapToBranch).values.toList(),
        builder: (context, state, navigationShell) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<FavoriteCubit>()..getLocalSamples()),
            BlocProvider(create: (context) => getIt<SampleCubit>()),
          ],
          child: ShellRouteScreen(screen: navigationShell),
        ),
      ),
    ];
    callback();
  }

  static MapBranch _mapToBranch(
    SharedRoutes sharedRoutes,
    Widget widget,
  ) =>
      MapEntry(
        sharedRoutes,
        StatefulShellBranch(
          routes: [GoRoute(name: sharedRoutes.name, path: sharedRoutes.path, builder: (context, state) => widget)],
        ),
      );
}

class ShellRouteScreen extends StatelessWidget with Navigation {
  ShellRouteScreen({super.key, required this.screen});
  final StatefulNavigationShell screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: useShellRoute
          ? CustomBottomNavigation(
              items: SharedRoutes.values,
              currentIndex: screen.currentIndex,
              onTab: (index) => screen.goBranch(
                index,
                initialLocation: index == screen.currentIndex,
              ),
            )
          : null,
    );
  }
}
