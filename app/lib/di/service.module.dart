import 'package:app/services/navigation.service.dart';
import 'package:design_system/common/services/inavigation.service.dart';
import 'package:locator/locator.dart';

get serviceModule => {
      getIt.registerSingleton<INavigationService>(NavigationService()),
    };
