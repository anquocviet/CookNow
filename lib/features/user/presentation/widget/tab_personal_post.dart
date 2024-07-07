import 'package:flutter/material.dart';

class TabPersonalPost extends StatefulWidget {
  const TabPersonalPost({super.key});

  @override
  State<TabPersonalPost> createState() => _TabPersonalPostState();
}

class _TabPersonalPostState extends State<TabPersonalPost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Bài viết cá nhân'),
    );
  }
}
