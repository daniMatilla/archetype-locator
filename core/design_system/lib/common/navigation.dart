import 'package:design_system/common/shared_screens.dart';
import 'package:locator/locator.dart';

import 'services/inavigation.service.dart';

abstract mixin class Navigation {
  final navigationService = getIt<INavigationService>();

  void pushScreen(Screens screen, {Object? params}) {
    navigationService.pushScreen(screen, params: params);
  }

  void popScreen() {
    navigationService.popScreen();
  }

  void setRoot(Screens screen) {
    navigationService.setRootScreen(screen);
  }
}
