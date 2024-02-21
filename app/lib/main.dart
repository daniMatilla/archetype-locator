import 'package:app/di/services.module.dart';
import 'package:design_system/common/shared_screens.dart';
import 'package:flutter/material.dart';
import 'package:design_system/theme.dart';

import 'router.dart';

_setUpModules() {
  serviceModule;
}

void main() {
  SharedRoute.registerRoutes(
    routes: routes,
    setUpModules: _setUpModules,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      routerConfig: appRouter,
    );
  }
}
