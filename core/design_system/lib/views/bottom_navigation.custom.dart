import 'package:design_system/common/shared_routes.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTab,
  });
  final List<SharedRoutes> items;
  final int currentIndex;
  final Function(int index) onTab;

  List<BottomNavigationBarItem> _bottomBarItems() {
    final sortItems = items.toList()
      ..sort((a, b) => a.isBottomBarOption - b.isBottomBarOption)
      ..removeWhere((element) => element.isBottomBarOption < 0);
    return sortItems.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.name)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTab(index),
      currentIndex: currentIndex,
      items: _bottomBarItems(),
    );
  }
}
