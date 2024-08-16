import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/application/comment_service.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/domain/comment/comment.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/posts/presentation/widget/media_step.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DetailPostScreen extends ConsumerStatefulWidget {
  const DetailPostScreen({super.key, required this.post});

  final Post post;

  @override
  ConsumerState<DetailPostScreen> createState() => _DetailPostScreenState();
}

class _DetailPostScreenState extends ConsumerState<DetailPostScreen> {
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
    ref.read(commentServiceProvider).fetchCommentOfPost(widget.post.id);
    final controllerState = ref.watch(feedControllerProvider);
    final commentService = ref.watch(commentServiceProvider);
    final streamListComment = commentService.watchListComment();
    final user = ref.watch(userRepositoryProvider).currentAccount;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.canPop() ? context.pop() : context.go('/feeds');
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                ),
              ],
              expandedHeight: 300,
              floating: false,
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  widget.post.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              Text(
                widget.post.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    child: Image.network(
                      widget.post.owner.avatar,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.post.owner.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Show the number of likes if there are any
              widget.post.emojis.fold(0, (sum, emoji) => sum + emoji.qty) > 0
                  ? Row(children: [
                      SizedBox(
                        height: 24,
                        width: 20 * widget.post.emojis.length.toDouble(),
                        child: ListView.separated(
                          itemCount: widget.post.emojis.length,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final userId = widget.post.emojis[index].v.first;
                            final user = ref.watch(fetchUserProvider(userId));
                            return CircleAvatar(
                              radius: 10,
                              child: switch (user) {
                                AsyncData(:final value) => Image.network(
                                    value?.avatar ?? "",
                                  ),
                                _ => Image.network(
                                    "https://www.w3schools.com/w3images/avatar2.png",
                                  ),
                              },
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 4);
                          },
                        ),
                      ),
                      Text('${widget.post.emojis.length} luợt thích',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                    ])
                  : const Text(
                      'Chưa có tương tác',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: controllerState.isLoading
                          ? null
                          : () => _reactToPost(
                              widget.post.id, user?.id ?? "", EnumEmoji.love),
                      icon: Icon(
                        Icons.favorite,
                        color: widget.post.emojis
                                .any((e) => e.v.any((id) => id == user?.id))
                            ? Colors.red
                            : null,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.ios_share)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  const SizedBox(width: 8),
                  Text(
                    widget.post.prepareTime,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.food_bank_outlined),
                  const SizedBox(width: 8),
                  Text(
                    "Số người ăn: ${widget.post.nopEat}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              const Text(
                "Nguyên liệu",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.post.ingredients
                    .map(
                      (i) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0,
                        minTileHeight: 0,
                        leading: const Text(
                          "-",
                          style: TextStyle(fontSize: 16),
                        ),
                        title: Text(
                          i,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 26),
              const Text(
                "Hướng dẫn cách làm",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: widget.post.steps
                    .asMap()
                    .map(
                      (index, step) => MapEntry(
                        index,
                        ListTile(
                          titleAlignment: ListTileTitleAlignment.top,
                          minLeadingWidth: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${index + 1}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            step.content,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: SizedBox(
                            height: 100,
                            child: ListView.builder(
                              itemCount: step.medias.length,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  margin: const EdgeInsets.all(4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: MediaStep(
                                      listPath: step.medias,
                                      currentPath: step.medias[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    )
                    .values
                    .toList(),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Icon(
                    Icons.comment_outlined,
                    size: 28,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Bình luận (${widget.post.qtyComments})",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: CustomTextField(
                      'Viết bình luận...',
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              StreamBuilder(
                stream: streamListComment,
                builder: (context, snapshot) {
                  final List<Comment?> comments = snapshot.data ?? [];
                  return Column(
                    children: comments
                        .map(
                          (comment) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 20,
                              child: Image.network(
                                comment!.avatar,
                              ),
                            ),
                            title: Text(
                              comment.name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(
                              comment.content,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
