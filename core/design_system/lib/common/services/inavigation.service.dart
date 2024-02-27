import 'package:design_system/common/shared_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class INavigationService extends Cubit<GoRouter> {
  INavigationService(GoRouter appRouter) : super(appRouter);

  String get location;
  void pushScreen(SharedRoutes screen, {Object? params});
  void popScreen();
  void setRootScreen(SharedRoutes screen);
}
