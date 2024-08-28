import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/widget/post_widget.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabPersonalPost extends ConsumerStatefulWidget {
  const TabPersonalPost({super.key, this.userId});

  final String? userId;

  @override
  ConsumerState<TabPersonalPost> createState() => _TabPersonalPostState();
}

class _TabPersonalPostState extends ConsumerState<TabPersonalPost> {
  @override
  Widget build(BuildContext context) {
    final feedService = ref.watch(feedServiceProvider);
    final user = ref.read(userRepositoryProvider).currentUser;
    final listPost =
        feedService.getPostOfUser(widget.userId ?? user!.id, 5, 0).asStream();

    return StreamBuilder<List<Post?>>(
        stream: listPost,
        builder: (context, snapshot) {
          final List<Post?> posts = snapshot.data ?? [];
          if (posts.isEmpty) {
            // Show empty state page
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Không có bài viết nào được hiển thị',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
        });
  }
}
