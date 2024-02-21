import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class INavigationService extends Cubit<GoRouter> {
  INavigationService(GoRouter appRouter) : super(appRouter);

  void pushScreen(String screen, {Object? params});
  void popScreen();
  void setRootScreen(String screen);
}
