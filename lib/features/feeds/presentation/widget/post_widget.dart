import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/format_string.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/posts/presentation/page/create_post_screen.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

enum ActionPostItem { edit, delete }

class PostWidget extends ConsumerStatefulWidget {
  const PostWidget({super.key, required this.post});

  final Post post;

  @override
  ConsumerState<PostWidget> createState() => _PostState();
}

class _PostState extends ConsumerState<PostWidget> {
  ActionPostItem? selectedItem;

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

  Future<void> _editPost(String postId) async {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return CreatePostScreen(post: widget.post);
      },
    );
  }

  Future<void> _removePost(String postId) async {
    try {
      await ref.read(feedControllerProvider.notifier).removePost(postId);
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e.toString()');
    }
  }

  void _navigateToPostDetail({bool isScrollToComment = false}) {
    context.push('${RouteName.home}${RouteName.detailPost}', extra: {
      'id': widget.post.id,
      'isScrollToComment': isScrollToComment,
    });
  }

  @override
  Widget build(BuildContext context) {
    final Post post = widget.post;
    final user = ref.read(userRepositoryProvider).currentUser;
    final controllerState = ref.watch(feedControllerProvider);

    if (controllerState.isLoading) {
      return const CircularProgressIndicator();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => post.owner.userId == user?.id
                    ? context.go(RouteName.profile)
                    : context.push('${RouteName.home}${RouteName.profileUser}',
                        extra: post.owner.userId),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.network(
                        post.owner.avatar,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.owner.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          timeAgoSinceDate(DateTime.parse(post.dateTimePost)),
                          style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              if (post.owner.userId == user?.id)
                PopupMenuButton<ActionPostItem>(
                  initialValue: selectedItem,
                  onSelected: (ActionPostItem item) {
                    setState(() {
                      selectedItem = item;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem<ActionPostItem>(
                      value: ActionPostItem.edit,
                      child: const Text('Sửa bài viết'),
                      onTap: () => _editPost(post.id),
                    ),
                    PopupMenuItem<ActionPostItem>(
                      value: ActionPostItem.delete,
                      child: const Text('Xóa bài viết'),
                      onTap: () => _removePost(post.id),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: _navigateToPostDetail,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.name,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
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
                            width: 20 *
                                (post.emojis.first.v.length > 3
                                    ? 3
                                    : post.emojis.first.v.length.toDouble()),
                            child: ListView.separated(
                              itemCount: post.emojis.first.v.length > 3
                                  ? 3
                                  : post.emojis.first.v.length,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final userId = post.emojis.first.v[index];
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
                          Text('${post.emojis.first.qty} luợt thích'),
                        ],
                      ),
                    Row(
                      children: [
                        if (post.qtyComments != 0)
                          Text('${post.qtyComments} bình luận'),
                        // const SizedBox(width: 4),
                        // if (post.qtyComments != 0)
                        //   const Text('10 lượt chia sẻ'),
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
                  onPressed: () =>
                      _navigateToPostDetail(isScrollToComment: true),
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
