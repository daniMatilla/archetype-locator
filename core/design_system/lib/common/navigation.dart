import 'package:locator/locator.dart';

import 'services/inavigation.service.dart';

abstract mixin class Navigation {
  final navigationService = getIt<INavigationService>();

  void pushScreen(String screen, {Object? params}) {
    navigationService.pushScreen(screen, params: params);
  }

  void popScreen() {
    navigationService.popScreen();
  }

  void setRoot(String screen) {
    navigationService.setRootScreen(screen);
  }
}
