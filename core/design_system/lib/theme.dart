import 'package:flutter/material.dart';

class AppTheme {
  AppTheme({required this.selectedColor})
      : assert(
          selectedColor >= 0 && selectedColor < _appColors.length,
          'selectedColor must be between [0..${_appColors.length - 1}]',
        );
  final int selectedColor;

  ThemeData theme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _appColors[selectedColor],
        brightness: Brightness.dark,
      );
}

const List<Color> _appColors = [
  Colors.blue,
  Colors.deepPurple,
  Colors.teal,
];
