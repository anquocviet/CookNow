import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PostWidget extends ConsumerStatefulWidget {
  const PostWidget({super.key, required this.post});

  final Post post;

  @override
  ConsumerState<PostWidget> createState() => _PostState();
}

class _PostState extends ConsumerState<PostWidget> {
  Future<void> _reactToPost(
      String postId, String userId, EnumEmoji emoji) async {
    try {
      await ref.read(feedControllerProvider.notifier).reactToPost(
          UpdateEmojiDto(postId: postId, userId: userId, emoji: emoji));
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e.toString()');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Post post = widget.post;
    final user = ref.read(userRepositoryProvider).currentAccount;
    final controllerState = ref.watch(feedControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Image.network(
                  post.owner.avatar,
                ),
              ),
              Column(
                children: [
                  Text(post.owner.name),
                  const Text('2 hours ago'),
                ],
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          GestureDetector(
            onTap: () => context
                .push('${RouteName.home}${RouteName.detailPost}', extra: post),
            child: Column(
              children: [
                Text(post.name),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    post.image,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (post.emojis.fold(0, (sum, emoji) => sum + emoji.qty) >
                        0)
                      Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 20 * post.emojis.length.toDouble(),
                            child: ListView.separated(
                              itemCount: post.emojis.length,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final userId = post.emojis[index].v.first;
                                final user =
                                    ref.watch(fetchUserProvider(userId));
                                return CircleAvatar(
                                  radius: 8,
                                  child: switch (user) {
                                    AsyncData(:final value) => Image.network(
                                        value?.avatar ?? "",
                                        width: 16,
                                        height: 16,
                                      ),
                                    _ => Image.network(
                                        "https://www.w3schools.com/w3images/avatar2.png",
                                        width: 16,
                                        height: 16,
                                      ),
                                  },
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(width: 4);
                              },
                            ),
                          ),
                          Text('${post.emojis.length} luợt thích'),
                        ],
                      ),
                    Row(
                      children: [
                        if (post.qtyComments != 0)
                          Text('${post.qtyComments} bình luận'),
                        const SizedBox(width: 4),
                        if (post.qtyComments != 0)
                          const Text('10 lượt chia sẻ'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Actions post
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: controllerState.isLoading
                      ? null
                      : () =>
                          _reactToPost(post.id, user?.id ?? "", EnumEmoji.love),
                  icon: Icon(
                    Icons.favorite,
                    color:
                        post.emojis.any((e) => e.v.any((id) => id == user?.id))
                            ? Colors.red
                            : null,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment_outlined,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.ios_share,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_outline,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
