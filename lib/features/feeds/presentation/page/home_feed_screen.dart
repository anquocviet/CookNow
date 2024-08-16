import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/page/community_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/follower_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/ingredient_screen.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tab_container/tab_container.dart';

class HomeFeedScreen extends ConsumerWidget {
  const HomeFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRepository = ref.read(userRepositoryProvider);
    final feedService = ref.read(feedServiceProvider);
    final user = userRepository.currentUser;
    feedService.fetchPostOfUser(user?.id ?? '');

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              forceElevated: innerBoxIsScrolled,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CookNow',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => context.go(RouteName.search),
                        icon: const Icon(Icons.search, size: 30),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.chat_rounded, size: 30),
                    ],
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabContainer(
          tabEdge: TabEdge.top,
          selectedTextStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          unselectedTextStyle: const TextStyle(
            fontSize: 13.0,
          ),
          tabs: const [
            Text('Cộng đồng'),
            Text('Theo dõi'),
            Text('Nguyên liệu'),
          ],
          children: const [
            CommunityScreen(),
            FollowerScreen(),
            IngredientScreen(),
          ],
        ),
      ),
    );
  }
}
