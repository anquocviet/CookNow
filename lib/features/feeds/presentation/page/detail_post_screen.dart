import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:cooknow/core/widget/gallery_media_view_wrapper.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/application/comment_service.dart';
import 'package:cooknow/features/feeds/presentation/controller/detail_post_screen_controller.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/domain/comment/comment.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/posts/presentation/page/create_post_screen.dart';
import 'package:cooknow/features/posts/presentation/widget/media_step.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DetailPostScreen extends ConsumerStatefulWidget {
  const DetailPostScreen({
    super.key,
    required this.post,
    this.isScrollToComment = false,
  });

  final Post post;
  final bool isScrollToComment;

  @override
  ConsumerState<DetailPostScreen> createState() => _DetailPostScreenState();
}

class _DetailPostScreenState extends ConsumerState<DetailPostScreen> {
  final _commentKey = GlobalKey();
  final _commentController = TextEditingController();

  String get commentContent => _commentController.text;

  @override
  void initState() {
    ref.read(commentServiceProvider).fetchCommentOfPost(widget.post.id);
    if (widget.isScrollToComment) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToComment();
      });
    }
    super.initState();
  }

  void _viewImage(List<String> listPath, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryMediaViewWrapper(
          initialIndex: index,
          galleryItems: listPath,
          scrollDirection: Axis.horizontal,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  void _openDetailEmojiPostScreen() {
    context.push(
      '${RouteName.home}${RouteName.detailEmojiPost}',
      extra: widget.post.emojis,
    );
  }

  String _timeAgoSinceDate(DateTime specificTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(specificTime);

    if (difference.inDays > 365) {
      int years = (difference.inDays / 365).floor();
      return '$years năm trước';
    } else if (difference.inDays > 30) {
      int months = (difference.inDays / 30).floor();
      return '$months tháng trước';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} ngày trước';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} giờ trước';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} phút trước';
    } else {
      return 'Mới đây';
    }
  }

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

  Future<void> _commentToPost() async {
    try {
      final dto = CreateCommentDto(
        postId: widget.post.id,
        userId: ref.read(userRepositoryProvider).currentAccount?.id ?? "",
        content: commentContent,
        dateTimeComment: DateTime.now().toIso8601String(),
      );
      await ref
          .read(detailPostScreenControllerProvider.notifier)
          .commentToPost(dto);
      _commentController.clear();
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e.toString()');
    }
  }

  void _scrollToComment() {
    if (_commentKey.currentContext == null) return;
    Scrollable.ensureVisible(
      _commentKey.currentContext!,
      curve: Curves.easeInOut,
      alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(feedControllerProvider);
    final state = ref.watch(detailPostScreenControllerProvider);
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
              centerTitle: false,
              title: Text(widget.post.name),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                ),
                if (user!.id == widget.post.owner.userId)
                  IconButton(
                    onPressed: () {
                      showCupertinoModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return CreatePostScreen(post: widget.post);
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
              ],
              expandedHeight: 300,
              floating: false,
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: FlexibleSpaceBar(
                background: GestureDetector(
                  onTap: () => _viewImage([widget.post.image], 0),
                  child: Image.network(
                    widget.post.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 4);
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: _openDetailEmojiPostScreen,
                          child: Text('${widget.post.emojis.length} luợt thích',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ),
                      ])
                    : const Text(
                        'Chưa có tương tác',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
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
                        onPressed: _scrollToComment,
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
                              margin: step.medias.isNotEmpty
                                  ? const EdgeInsets.only(top: 0)
                                  : const EdgeInsets.only(top: 6),
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
                              height: 100 * step.medias.length.toDouble(),
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
                    Expanded(
                      child: CustomTextField(
                        'Viết bình luận...',
                        contentPadding: const EdgeInsets.all(8),
                        controller: _commentController,
                        onChanged: (text) =>
                            setState(() => _commentController.text = text),
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (commentContent.isNotEmpty)
                      IconButton.filledTonal(
                        onPressed: state.isLoading ? null : _commentToPost,
                        icon: const Icon(Icons.send, size: 20),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                StreamBuilder(
                  key: _commentKey,
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
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    comment.content,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    _timeAgoSinceDate(comment.dateTimeComment),
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}
