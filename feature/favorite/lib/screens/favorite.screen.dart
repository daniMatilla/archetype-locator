import 'package:design_system/common/services/inavigation.service.dart';
import 'package:flutter/material.dart';
import 'package:locator/locator.dart';

class FavoriteScreen extends BaseStatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(getIt<INavigationService>().location),
      ),
    );
  }
}
