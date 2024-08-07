import 'package:cooknow/features/feeds/presentation/page/post/post.dart';
import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:cooknow/features/posts/domain/post/post.dart' as d;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommunityScreen extends ConsumerWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postService = ref.watch(postServiceProvider);
    final listPost = postService.watchListPost();

    return Scaffold(
      body: Center(
        child: StreamBuilder<List<d.Post?>>(
            stream: listPost,
            builder: (context, snapshot) {
              final List<d.Post?> posts = snapshot.data ?? [];
              if (posts.isEmpty) {
                return const CircularProgressIndicator();
              }
              return ListView.separated(
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
      ),
    );
  }
}
