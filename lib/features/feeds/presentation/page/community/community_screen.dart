import 'package:cooknow/features/feeds/presentation/page/post/post.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const Post();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 8);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
