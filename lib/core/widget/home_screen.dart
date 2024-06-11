import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cooknow/features/feeds/presentation/page/home_feed_screen.dart';
import 'package:cooknow/features/notifications/presentation/page/notification_screen.dart';
import 'package:cooknow/features/posts/presentation/page/create_post_screen.dart';
import 'package:cooknow/features/profile/presentation/page/profile_screen.dart';
import 'package:cooknow/features/search/presentation/page/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];
  Widget? page = const HomeFeedScreen();

  void _onSelectedTab(int index) {
    setState(() {
      switch (index) {
        case 0:
          page = const HomeFeedScreen();
          break;
        case 1:
          page = const SearchScreen();
          break;
        case 2:
          showModalBottomSheet(
            context: context,
            builder: (context) => const CreatePostScreen(),
            isScrollControlled: true,
          );
          break;
        case 3:
          page = const NotificationScreen();
          break;
        case 4:
          page = const ProfileScreen();
          break;
      }
      _currentIndex = index == 2 ? _currentIndex : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: Colors.grey[300],
        itemCount: icons.length,
        activeIndex: _currentIndex,
        gapWidth: 1,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: _onSelectedTab,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            icons[index],
            size: 28,
            color: isActive ? Theme.of(context).primaryColor : Colors.black,
          );
        },
      ),
      body: page,
    );
  }
}
