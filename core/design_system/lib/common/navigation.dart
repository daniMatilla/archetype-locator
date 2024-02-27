import 'package:design_system/common/shared_routes.dart';
import 'package:locator/locator.dart';

import 'services/inavigation.service.dart';

abstract mixin class Navigation {
  final navigationService = getIt<INavigationService>();

  void pushScreen(SharedRoutes screen, {Object? params}) {
    navigationService.pushScreen(screen, params: params);
  }

  void popScreen() {
    navigationService.popScreen();
  }

  void setRootScreen(SharedRoutes screen) {
    navigationService.setRootScreen(screen);
  }
}
