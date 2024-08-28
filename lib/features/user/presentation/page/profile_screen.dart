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

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key, this.userId});

  final String? userId;

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isPersonalPost = true;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        isPersonalPost = _tabController.index == 0;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userService = ref.watch(userServiceProvider);
    final feedService = ref.watch(feedServiceProvider);
    final userValue = ref.read(userRepositoryProvider).currentUser;
    final Stream<User?> user = widget.userId == null
        ? userService.watchUser()
        : userService.fetchUser(widget.userId!).asStream();

    return Scaffold(
      appBar: AppBar(
        actions: widget.userId != null
            ? null
            : [
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  onPressed: () {
                    setState(() => isPersonalPost = !isPersonalPost);
                    _tabController.animateTo(isPersonalPost ? 0 : 1);
                  },
                ),
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
          await feedService.fetchPostForUser(userValue?.id ?? '', 5, 0);
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              StreamBuilder<User?>(
                stream: user,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return _buildProfile(context, snapshot.data!, ref);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
              widget.userId != null
                  ? const SizedBox(height: 8)
                  : DefaultTabController(
                      length: 2,
                      child: TabBar(
                        labelColor: Theme.of(context).primaryColor,
                        indicatorColor: Theme.of(context).primaryColor,
                        controller: _tabController,
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.grid_on),
                          ),
                          Tab(
                            icon: Icon(Icons.bookmark),
                          ),
                        ],
                      ),
                    ),
              isPersonalPost
                  ? widget.userId != null
                      ? TabPersonalPost(userId: widget.userId)
                      : const TabPersonalPost()
                  : const TabSavedPost(),
            ],
          ),
        ),
      ),
    );
  }

  _buildProfile(BuildContext context, User user, WidgetRef ref) {
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

    void openFollowUser(String title, List<String> listUserId) {
      context.push(
        '${RouteName.home}${RouteName.listUserScreen}',
        extra: {'title': title, 'listUserId': listUserId},
      );
    }

    return Column(
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          user.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
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
                            user.living.isEmpty ? 'Chưa cập nhật' : user.living,
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
                    color: user.bio.isEmpty ? Colors.black54 : Colors.black87,
                  ),
                ),
              ),
              if (widget.userId != null)
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
              Row(
                children: [
                  TextButton(
                    onPressed: () =>
                        openFollowUser('Người theo dõi', user.follower),
                    child: Text(
                      '${user.follower.length} người theo dõi',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: () =>
                        openFollowUser('Đang theo dõi', user.following),
                    child: Text(
                      '${user.following.length} đang theo dõi',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
