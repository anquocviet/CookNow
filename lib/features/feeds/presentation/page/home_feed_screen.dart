import 'package:cooknow/core/socket/socket_cli.dart';
import 'package:cooknow/features/feeds/presentation/page/community/community_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/follower/follower_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/ingredient/ingredient_screen.dart';
import 'package:cooknow/features/search/presentation/widget/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tab_container/tab_container.dart';

class HomeFeedScreen extends ConsumerWidget {
  const HomeFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(socketProvider);

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSearch(),
            Icon(Icons.chat_rounded, size: 30),
          ],
        ),
      ),
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
    );
  }
}
