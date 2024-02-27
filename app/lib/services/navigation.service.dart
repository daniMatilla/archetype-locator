import 'package:design_system/common/services/inavigation.service.dart';
import 'package:design_system/common/shared_routes.dart';

import '../router/router.dart';

class NavigationService extends INavigationService {
  NavigationService() : super(appRouter);

  @override
  void pushScreen(SharedRoutes screen, {Object? params}) {
    final routeName = AppRouter.appRoutes[screen]?.name;
    if (routeName != null) {
      state.pushNamed(routeName, extra: params);
    }
  }

  @override
  void setRootScreen(SharedRoutes screen) {
    final routeName = AppRouter.appRoutes[screen]?.name;
    if (routeName != null) {
      state.replaceNamed(routeName);
    }
  }

  @override
  void popScreen() => state.pop();

  @override
  String get location => '${state.routeInformationProvider.value.uri}';
}
