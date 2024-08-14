import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/page/post/post.dart';
import 'package:cooknow/features/posts/domain/post/post.dart' as d;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabPersonalPost extends ConsumerStatefulWidget {
  const TabPersonalPost({super.key});

  @override
  ConsumerState<TabPersonalPost> createState() => _TabPersonalPostState();
}

class _TabPersonalPostState extends ConsumerState<TabPersonalPost> {
  @override
  Widget build(BuildContext context) {
    final feedService = ref.watch(feedServiceProvider);
    final listPost = feedService.watchListPost();

    return Scaffold(
      body: StreamBuilder<List<d.Post?>>(
          stream: listPost,
          builder: (context, snapshot) {
            final List<d.Post?> posts = snapshot.data ?? [];
            if (posts.isEmpty) {
              return const CircularProgressIndicator();
            }
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Post(
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
