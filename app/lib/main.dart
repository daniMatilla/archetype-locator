import 'package:flutter/material.dart';
import 'package:design_system/theme.dart';

import 'di/modules.barrel.dart';
import 'router/router.dart';

setUpModules() {
  localDataSourceModule;
  remoteDataSourceModule;
  serviceModule;
  repositoryModule;
  useCaseModule;
  cubitModule;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppRouter.registerRoutes(callback: setUpModules, useShellRoute: true);
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
