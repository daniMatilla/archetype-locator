import 'package:app/di/cubit.module.dart';
import 'package:app/di/remote_datasource.module.dart';
import 'package:app/di/repository.module.dart';
import 'package:app/di/service.module.dart';
import 'package:flutter/material.dart';
import 'package:design_system/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locator/locator.dart';
import 'package:sample/cubit/sample_cubit.dart';

import 'router/router.dart';

setUpModules() {
  // localDataSourceModule;
  remoteDataSourceModule;
  serviceModule;
  repositoryModule;
  // useCaseModule;
  cubitModule;
}

void main() {
  AppRouter.registerRoutes(callback: setUpModules);
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
