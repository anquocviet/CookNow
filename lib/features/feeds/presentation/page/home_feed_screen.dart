import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/page/community_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/follower_screen.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tab_container/tab_container.dart';

class HomeFeedScreen extends ConsumerStatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends ConsumerState<HomeFeedScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    final userRepository = ref.read(userRepositoryProvider);
    final feedService = ref.read(feedServiceProvider);
    final user = userRepository.currentUser;
    feedService.fetchPostForUser(user?.id ?? '');
    Future(() => ref.watch(userServiceProvider).watchUserFollow());

    _controller.addListener(() {
      if (_controller.index == 0) {
        feedService.fetchPostForUser(user?.id ?? '');
      } else if (_controller.index == 1) {
        feedService.fetchPostOfUserFollowing(user?.id ?? '');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    Future<void> refresh() async {
      if (isLoading) return;
      setState(() {
        isLoading = true;
      });
      final feedService = ref.read(feedServiceProvider);
      final user = ref.read(userRepositoryProvider).currentUser;
      if (_controller.index == 0) {
        await feedService.fetchPostForUser(user?.id ?? '');
      } else if (_controller.index == 1) {
        await feedService.fetchPostOfUserFollowing(user?.id ?? '');
      }
      setState(() {
        isLoading = false;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
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
            controller: _controller,
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
              // Text('Nguyên liệu'),
            ],
            children: [
              RefreshIndicator(
                onRefresh: refresh,
                child: const CommunityScreen(),
              ),
              RefreshIndicator(
                onRefresh: refresh,
                child: const FollowerScreen(),
              ),
              // IngredientScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
