import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/format_string.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:cooknow/core/widget/gallery_media_view_wrapper.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/application/comment_service.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/controller/detail_post_screen_controller.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
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
    required this.id,
    this.isScrollToComment = false,
  });

  final String id;
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
    try {
      ref.read(feedServiceProvider).fetchPost(widget.id);
      ref.read(commentServiceProvider).fetchCommentOfPost(widget.id);
      if (widget.isScrollToComment) {
        // WidgetsBinding.instance.addPostFrameCallback((_) {
        Future(() => _scrollToComment());
        // });
      }
    } on AppException catch (e) {
      showError(context, e.message);
    } on Exception catch (e) {
      showError(context, 'Có lỗi xảy ra $e.toString()');
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

  void _openDetailEmojiPostScreen(Post post) {
    context.push('${RouteName.home}${RouteName.listUserScreen}', extra: {
      'title': 'Yêu thích',
      'listUserId': post.emojis.first.v,
    });
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

  Future<void> _fetchPost(String id) async {
    try {
      await ref.read(feedServiceProvider).fetchPost(id);
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e.toString()');
    }
  }

  Future<void> _commentToPost() async {
    try {
      final dto = CreateCommentDto(
        postId: widget.id,
        userId: ref.read(userRepositoryProvider).currentUser?.id ?? "",
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
    ref.watch(postServiceProvider).watchRemovePost(widget.id);
    ref.watch(commentServiceProvider).watchCreateComment(widget.id);

    final currentPostState =
        ref.watch(currentPostStateChangesProvider(widget.id));
    final streamListComment = commentService.watchListComment();
    final user = ref.read(userRepositoryProvider).currentUser;

    return Scaffold(
      body: currentPostState.when(
        data: (post) => RefreshIndicator(
          onRefresh: () async {
            await ref.read(feedServiceProvider).fetchPostForUser(user!.id);
          },
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      context.canPop() ? context.pop() : context.go('/feeds');
                    },
                  ),
                  centerTitle: false,
                  title: Text(post.name),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                    ),
                    if (user!.id == post.owner.userId)
                      IconButton(
                        onPressed: () {
                          showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return CreatePostScreen(post: post);
                            },
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                  ],
                  expandedHeight: 200,
                  floating: false,
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    background: GestureDetector(
                      onTap: () => _viewImage([post.image], 0),
                      child: Image.network(
                        post.image,
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
                      post!.name.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => post.owner.userId == user!.id
                          ? context.go(RouteName.profile)
                          : context.push(
                              '${RouteName.home}${RouteName.profileUser}',
                              extra: post.owner.userId),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            child: Image.network(
                              post.owner.avatar,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            post.owner.name,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      timeAgoSinceDate(DateTime.parse(post.dateTimePost)),
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Show the number of likes if there are any
                    post.emojis.fold(0, (sum, emoji) => sum + emoji.qty) <= 0
                        ? const Text(
                            'Chưa có tương tác',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )
                        : Row(children: [
                            SizedBox(
                              height: 24,
                              width: 25 *
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
                              onTap: () => _openDetailEmojiPostScreen(post),
                              child: Text('${post.emojis.first.qty} luợt thích',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ]),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: controllerState.isLoading
                                ? null
                                : () => _reactToPost(
                                    post.id, user?.id ?? "", EnumEmoji.love),
                            icon: Icon(
                              Icons.favorite,
                              color: post.emojis.any(
                                      (e) => e.v.any((id) => id == user?.id))
                                  ? Colors.red
                                  : null,
                            )),
                        IconButton(
                            onPressed: _scrollToComment,
                            icon: const Icon(Icons.comment_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.ios_share)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.access_time_outlined),
                        const SizedBox(width: 8),
                        Text(
                          post.prepareTime,
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
                          "Số người ăn: ${post.nopEat}",
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
                      children: post.ingredients
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
                      children: post.steps
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
                                  height: 70 * (step.medias.isEmpty ? 0 : 1),
                                  child: ListView.builder(
                                    itemCount: step.medias.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        margin: const EdgeInsets.all(4),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                          "Bình luận (${post.qtyComments})",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        comment.content,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        timeAgoSinceDate(
                                            comment.dateTimeComment),
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
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bài viết không tồn tại hoặc đã bị xóa'),
              const SizedBox(height: 48),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      'Tải lại',
                      width: 120,
                      onPressed: () => _fetchPost(widget.id),
                    ),
                    const SizedBox(width: 8),
                    CustomButton(
                      'Quay lại',
                      width: 120,
                      onPressed: () {
                        context.canPop() ? context.pop() : context.go('/feeds');
                      },
                    ),
                  ],
                ),
              )
            ],
          ));
        },
      ),
    );
  }
}
