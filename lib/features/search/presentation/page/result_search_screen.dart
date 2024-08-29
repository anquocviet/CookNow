import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/search/application/search_service.dart';
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
  double take = 5;

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

  void _loadPostMore() {
    try {
      setState(() {
        take += 5;
      });
      ref.refresh(searchServiceProvider).search(widget.search, take, 0);
    } on AppException catch (e) {
      showError(context, e.message);
    } catch (e) {
      showError(context, 'Đã xảy ra lỗi $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchService = ref.read(searchServiceProvider);
    final result = ref.watch(searchProvider(widget.search, take, 0));
    final width = MediaQuery.of(context).size.width;
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
          child: switch (result) {
            AsyncData(:final value) => _build(value, width, currentUser, state),
            AsyncError() => SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Text('Có lỗi xảy ra: ${state.error}'),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              ),
          },
        ),
      ),
    );
  }

  _build(Map<String, List> value, double width, User? currentUser,
      AsyncValue<Object?> state) {
    final posts = value['posts'] as List<Post>;
    final users = value['users'] as List<User>;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bài viết',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.name,
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              post.ingredients.join(', '),
                              style: const TextStyle(fontSize: 14),
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
                    onPressed: state.isLoading ? null : _loadPostMore),
              ),
            const SizedBox(height: 20),
            const Text(
              'Người dùng',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
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
                      : context.push(
                          '${RouteName.home}${RouteName.profileUser}',
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
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
                  onPressed: () {},
                ),
              ),
          ],
        ),
      ],
    );
  }
}
