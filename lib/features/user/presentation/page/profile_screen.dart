import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/custom_circular_progress_indicator.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/controller/profile_screen_controller.dart';
import 'package:cooknow/features/user/presentation/widget/tab_personal_post.dart';
import 'package:cooknow/features/user/presentation/widget/tab_saved_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tab_container/tab_container.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key, this.userId});

  final String? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userService = ref.watch(userServiceProvider);
    final feedService = ref.watch(feedServiceProvider);
    final userValue = ref.read(userRepositoryProvider).currentUser;
    final Stream<User?> user = userId == null
        ? userService.watchUser()
        : userService.fetchUser(userId!).asStream();

    return Scaffold(
      appBar: AppBar(
        actions: userId != null
            ? null
            : [
                IconButton(
                  onPressed: () => context.go(
                      '${RouteName.profile}/${RouteName.changeInfoProfile}'),
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () =>
                      context.go('${RouteName.profile}/${RouteName.settings}'),
                ),
              ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await userService.fetchUserWhenLogin(userValue?.id ?? '');
          await feedService.fetchPostForUser(userValue?.id ?? '');
        },
        child: StreamBuilder<User?>(
          stream: user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildProfile(context, snapshot.data!, ref);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  _buildProfile(BuildContext context, User user, WidgetRef ref) {
    const lengthAPost = 660.0; // 660 is the height of a post
    final lengthPost = ref.read(lengthUserPostProvider);
    final state = ref.watch(profileScreenControllerProvider);
    final currentUserFollowing =
        ref.read(userRepositoryProvider).currentUser!.following;

    void followUser() {
      try {
        ref.read(profileScreenControllerProvider.notifier).followUser(user.id);
      } on AppException catch (e) {
        showError(context, e.message);
      } catch (e) {
        showError(context, 'Đã xảy ra lỗi $e');
      }
    }

    void unFollowUser() {
      try {
        ref
            .read(profileScreenControllerProvider.notifier)
            .unFollowUser(user.id);
      } on AppException catch (e) {
        showError(context, e.message);
      } catch (e) {
        showError(context, 'Đã xảy ra lỗi $e');
      }
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: lengthPost * lengthAPost,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(user.avatar),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '@${user.account.username}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.cake_rounded, size: 20),
                              const SizedBox(width: 4),
                              Text(
                                user.age.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 20,
                                color: user.living.isEmpty
                                    ? Colors.black38
                                    : Colors.black87,
                              ),
                              Text(
                                user.living.isEmpty
                                    ? 'Chưa cập nhật'
                                    : user.living,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: user.living.isEmpty
                                      ? Colors.black38
                                      : Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bio: ${user.bio.isEmpty ? 'Chưa cập nhật' : user.bio}',
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            user.bio.isEmpty ? Colors.black54 : Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (userId != null)
                    FilledButton.icon(
                      label: Text(
                        currentUserFollowing.contains(user.id)
                            ? 'Hủy theo dõi'
                            : 'Theo dõi',
                      ),
                      icon: state.isLoading
                          ? const CustomCircularProgressIndicator()
                          : null,
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
                          : currentUserFollowing.contains(user.id)
                              ? unFollowUser
                              : followUser,
                    ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '${user.follower.length} người theo dõi',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '${user.following.length} đang theo dõi',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: userId != null
                  ? TabPersonalPost(user: user)
                  : AspectRatio(
                      aspectRatio: 1,
                      child: TabContainer(
                        tabEdge: TabEdge.top,
                        selectedTextStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        unselectedTextStyle: const TextStyle(
                          fontSize: 13.0,
                        ),
                        tabs: const [
                          Text('Bài viết cá nhân'),
                          Text('Bài viết đã lưu'),
                        ],
                        children: const [
                          TabPersonalPost(),
                          TabSavedPost(),
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
