import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/search/application/search_service.dart';
import 'package:cooknow/features/search/presentation/controller/post_search_controller.dart';
import 'package:cooknow/features/search/presentation/controller/user_search_controller.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/controller/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ResultSearchScreen extends ConsumerStatefulWidget {
  const ResultSearchScreen({super.key, required this.search});

  final String search;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResultSearchScreenState();
}

class _ResultSearchScreenState extends ConsumerState<ResultSearchScreen> {
  double postTake = 5;
  double userTake = 5;

  @override
  void initState() {
    ref
        .read(postSearchControllerProvider.notifier)
        .searchPost(widget.search, postTake, 0);
    ref
        .read(userSearchControllerProvider.notifier)
        .searchUser(widget.search, userTake, 0);
    super.initState();
  }

  void _followUser(String followerId) {
    try {
      ref.read(profileScreenControllerProvider.notifier).followUser(followerId);
    } on AppException catch (e) {
      showError(context, e.message);
    } catch (e) {
      showError(context, 'Đã xảy ra lỗi $e');
    }
  }

  void _unFollowUser(String unFollowId) {
    try {
      ref
          .read(profileScreenControllerProvider.notifier)
          .unFollowUser(unFollowId);
    } on AppException catch (e) {
      showError(context, e.message);
    } catch (e) {
      showError(context, 'Đã xảy ra lỗi $e');
    }
  }

  void _loadMore(bool isPost) {
    try {
      if (isPost) {
        setState(() {
          postTake += 5;
        });
        ref
            .read(postSearchControllerProvider.notifier)
            .searchPost(widget.search, postTake, 0);
      } else {
        setState(() {
          userTake += 5;
        });
        ref
            .read(userSearchControllerProvider.notifier)
            .searchUser(widget.search, userTake, 0);
      }
    } on AppException catch (e) {
      showError(context, e.message);
    } catch (e) {
      showError(context, 'Đã xảy ra lỗi $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchService = ref.read(searchServiceProvider);
    final width = MediaQuery.of(context).size.width;
    final postState = ref.watch(postSearchControllerProvider);
    final userState = ref.watch(userSearchControllerProvider);
    final currentUser = ref.read(userRepositoryProvider).currentUser;
    final state = ref.watch(profileScreenControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kết quả tìm kiếm: ${widget.search}'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RefreshIndicator(
          onRefresh: () async {
            await searchService.search(widget.search, 5, 0);
          },
          child: ListView(
            children: [
              const Text(
                'Bài viết',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              switch (postState) {
                AsyncData(:final value) =>
                  _buildPost(value, width, currentUser, state),
                AsyncLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                AsyncError(:final error, :final stackTrace) => Center(
                    child: Text('Có lỗi xảy ra: $error $stackTrace'),
                  ),
                _ => const Center(
                    child: Text('Có lỗi xảy ra'),
                  ),
              },
              const SizedBox(height: 20),
              const Text(
                'Người dùng',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              switch (userState) {
                AsyncData(:final value) =>
                  _buildUser(value, width, currentUser, state),
                AsyncLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                AsyncError(:final error, :final stackTrace) => Center(
                    child: Text('Có lỗi xảy ra: $error $stackTrace'),
                  ),
                _ => const Center(
                    child: Text('Có lỗi xảy ra'),
                  ),
              },
            ],
          ),
        ),
      ),
    );
  }

  _buildPost(List<Post>? posts, double width, User? currentUser,
      AsyncValue<Object?> state) {
    if (posts == null) {
      return const Center(
        child: SizedBox(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (posts.isEmpty)
          const Center(
            child: Text('Không có bài viết nào'),
          ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return GestureDetector(
              onTap: () => context.push(
                '${RouteName.home}${RouteName.detailPost}',
                extra: {'id': post.id, 'isScrollToComment': false},
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                color: Colors.grey[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            post.ingredients.join(', '),
                            style: const TextStyle(fontSize: 14),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    NetworkImage(post.owner.avatar),
                              ),
                              const SizedBox(width: 5),
                              Text(post.owner.name),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.network(
                      post.image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 10);
          },
        ),
        if (posts.isNotEmpty)
          Align(
            alignment: Alignment.center,
            child: CustomButton('Hiển thị thêm',
                width: width * 0.5,
                onPressed: state.isLoading ? null : () => _loadMore(true)),
          ),
      ],
    );
  }

  _buildUser(List<User>? users, double width, User? currentUser,
      AsyncValue<Object?> state) {
    if (users == null) {
      return const Center(
        child: SizedBox(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (users.isEmpty)
          const Center(
            child: Text('Không có người dùng nào'),
          ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return GestureDetector(
              onTap: () => user.id == currentUser.id
                  ? context.go(RouteName.profile)
                  : context.push('${RouteName.home}${RouteName.profileUser}',
                      extra: user.id),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.network(
                        user.avatar,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text('@${user.account.username}'),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 120,
                      child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).primaryColor,
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: state.isLoading
                            ? null
                            : currentUser!.following.contains(user.id)
                                ? () => _unFollowUser(user.id)
                                : () => _followUser(user.id),
                        child: Text(
                          currentUser!.following.contains(user.id)
                              ? 'Hủy theo dõi'
                              : 'Theo dõi',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        if (users.isNotEmpty)
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              'Hiển thị thêm',
              width: width * 0.5,
              onPressed: state.isLoading ? null : () => _loadMore(false),
            ),
          ),
      ],
    );
  }
}
