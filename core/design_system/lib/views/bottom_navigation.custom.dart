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
  final Function(SharedRoutes sharedRoute) onTab;

  List<BottomNavigationBarItem> _bottomBarItems() =>
      items.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.name)).toList();

  // SharedRoutes _currentLocation(String location) =>
  //     items.firstWhere((element) => element.path == location, orElse: () => SharedRoutes.home);

  @override
  Widget build(BuildContext context) {
    // final location = getIt<INavigationService>().location;
    // SharedRoutes current = _currentLocation(location);

    return BottomNavigationBar(
      onTap: (index) => onTab(items[index]),
      currentIndex: currentIndex, //items.indexOf(current),
      items: _bottomBarItems(),
    );
  }
}
