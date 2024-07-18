import 'package:flutter/material.dart';

class TabSavedPost extends StatefulWidget {
  const TabSavedPost({super.key});

  @override
  State<TabSavedPost> createState() => _TabSavedPostState();
}

class _TabSavedPostState extends State<TabSavedPost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Bài viết đã lưu'),
    );
  }
}
