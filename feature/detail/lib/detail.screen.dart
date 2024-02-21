import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String route = (DetailScreen).toString().toLowerCase();

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(route),
      ),
    );
  }
}
