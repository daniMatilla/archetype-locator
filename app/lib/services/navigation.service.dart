import 'package:design_system/common/services/inavigation.service.dart';
import 'package:design_system/common/shared_screens.dart';

import '../router.dart';

class NavigationService extends INavigationService {
  NavigationService() : super(appRouter);

  @override
  void pushScreen(String screen, {Object? params}) {
    final routeName = SharedRoute.sharedRoutes[screen]?.name;
    if (routeName != null) {
      state.pushNamed(routeName, extra: params);
    }
  }

  @override
  void setRootScreen(String screen) {
    final routeName = SharedRoute.sharedRoutes[screen]?.name;
    if (routeName != null) {
      state.replace(routeName);
    }
  }

  @override
  void popScreen() => state.pop();
}
