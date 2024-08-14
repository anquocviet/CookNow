import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/widget/post_widget.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommunityScreen extends ConsumerWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedService = ref.watch(feedServiceProvider);
    final listPost = feedService.watchListPost();
    final user = ref.read(userRepositoryProvider).currentAccount;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await feedService.fetchPostOfUser(user?.id ?? '');
        },
        child: StreamBuilder<List<Post?>>(
            stream: listPost,
            builder: (context, snapshot) {
              final List<Post?> posts = snapshot.data ?? [];
              if (posts.isEmpty) {
                return const CircularProgressIndicator();
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
      ),
    );
  }
}
