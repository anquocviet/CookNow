import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/widget/post_widget.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FollowerScreen extends ConsumerWidget {
  const FollowerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedService = ref.watch(feedServiceProvider);
    final listPost = feedService.watchListPost();

    return Scaffold(
      body: StreamBuilder<List<Post?>>(
          stream: listPost,
          builder: (context, snapshot) {
            final List<Post?> posts = snapshot.data ?? [];
            if (posts.isEmpty) {
              return const Center(
                child: SingleChildScrollView(
                  child: Text('Không có bài viết nào'),
                ),
              );
            }
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return PostWidget(
                  post: posts[index]!,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 8);
              },
              itemCount: posts.length,
            );
          }),
    );
  }
}
