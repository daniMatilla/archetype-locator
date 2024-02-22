import 'package:design_system/common/services/inavigation.service.dart';
import 'package:design_system/common/shared_routes.dart';

import '../router/router.dart';

class NavigationService extends INavigationService {
  NavigationService() : super(appRouter);

  @override
  void pushScreen(SharedRoutes screen, {Object? params}) {
    final routeName = AppRouter.routes[screen]?.name;
    if (routeName != null) {
      state.pushNamed(routeName, extra: params);
    }
  }

  @override
  void setRootScreen(SharedRoutes screen) {
    final routeName = AppRouter.routes[screen]?.name;
    if (routeName != null) {
      state.replace(routeName);
    }
  }

  @override
  void popScreen() => state.pop();

  @override
  String location() => '${state.routeInformationProvider.value.uri}';
}
