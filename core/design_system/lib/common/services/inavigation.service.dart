import 'package:design_system/common/shared_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class INavigationService extends Cubit<GoRouter> {
  INavigationService(GoRouter appRouter) : super(appRouter);

  void pushScreen(Screens screen, {Object? params});
  void popScreen();
  void setRootScreen(Screens screen);
  String location();
}
