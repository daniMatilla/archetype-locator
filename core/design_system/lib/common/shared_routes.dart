import 'package:flutter/material.dart';

// Add the app routes here...
enum SharedRoutes {
  detail(name: 'detail', path: '/detail', icon: null),
  favorites(name: 'favorites', path: '/favorites', isBottomBarOption: 1, icon: Icons.favorite_border),
  home(name: 'home', path: '/', isBottomBarOption: 0, icon: Icons.home_max);

  const SharedRoutes({
    required this.name,
    required this.path,
    this.isBottomBarOption = -1,
    this.icon,
  });
  final String name;
  final String path;
  final int isBottomBarOption;
  final IconData? icon;
}
