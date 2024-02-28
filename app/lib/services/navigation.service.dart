import 'package:design_system/common/services/inavigation.service.dart';
import 'package:design_system/common/shared_routes.dart';

import '../router/router.dart';

class NavigationService extends INavigationService {
  NavigationService() : super(appRouter);

  @override
  void pushScreen(SharedRoutes screen, {Object? params}) {
    state.pushNamed(screen.name, extra: params);
  }

  @override
  void setRootScreen(SharedRoutes screen) {
    state.replaceNamed(screen.name);
  }

  @override
  void popScreen() => state.pop();

  @override
  String get location => '${state.routeInformationProvider.value.uri}';
}
