import 'package:design_system/common/services/inavigation.service.dart';
import 'package:design_system/common/shared_screens.dart';
import 'package:flutter/material.dart';
import 'package:locator/locator.dart';

class SampleScreen extends StatelessWidget {
  static String route = (SampleScreen).toString().toLowerCase();

  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(route),
            FilledButton(
              onPressed: () {
                getIt<INavigationService>().pushScreen(Screens.detail);
              },
              child: const Text('Go to detail'),
            )
          ],
        ),
      ),
    );
  }
}
