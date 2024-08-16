import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/widget/tab_personal_post.dart';
import 'package:cooknow/features/user/presentation/widget/tab_saved_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tab_container/tab_container.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userService = ref.watch(userServiceProvider);
    final feedService = ref.watch(feedServiceProvider);
    final userValue = ref.read(userRepositoryProvider).currentAccount;
    final Stream<User?> user = userService.watchUser();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => context
                .go('${RouteName.profile}/${RouteName.changeInfoProfile}'),
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
          await feedService.fetchPostOfUser(userValue?.id ?? '');
          await feedService.fetchPostOfUser(userValue?.id ?? '');
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: lengthPost * lengthAPost,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
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
                            '@${user.account?.username}',
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
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      user.bio,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '${user.followers.length} người theo dõi',
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
              child: AspectRatio(
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
