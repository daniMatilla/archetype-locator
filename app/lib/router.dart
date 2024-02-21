import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:design_system/common/shared_screens.dart';
import 'package:sample/sample.screen.dart';
import 'package:detail/detail.screen.dart';

final appRouter = GoRouter(
  initialLocation: SharedRoute.sharedRoutes[SharedRoute.home]!.path,
  routes: SharedRoute.sharedRoutes.values.toList(),
);

const Map<String, Widget> routes = {
  SharedRoute.home: SampleScreen(),
  SharedRoute.detail: DetailScreen(),
};
