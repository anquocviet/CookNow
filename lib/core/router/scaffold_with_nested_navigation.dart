import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.home,
      Icons.search,
      Icons.add,
      Icons.notifications,
      Icons.person,
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: navigationShell,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: Colors.grey[300],
        itemCount: icons.length,
        activeIndex: navigationShell.currentIndex,
        gapWidth: 1,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: _goBranch,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            icons[index],
            size: 28,
            color: isActive ? Theme.of(context).primaryColor : Colors.black,
          );
        },
      ),
    );
  }
}
