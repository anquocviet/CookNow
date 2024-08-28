import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/widget/post_widget.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FollowerScreen extends ConsumerStatefulWidget {
  const FollowerScreen({super.key, required this.onRefresh});

  final Future<void> Function() onRefresh;

  @override
  ConsumerState<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends ConsumerState<FollowerScreen> {
  late ScrollController _scrollController;
  static int page = 1;
  bool isLoading = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData(page);
      }
    });
    super.initState();
  }

  void _getMoreData(int index) async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      page++;
      final feedService = ref.read(feedServiceProvider);
      await feedService.fetchPostOfUserFollowing(page * 5, page * 5 - 5);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final feedService = ref.watch(feedServiceProvider);
    final listPost = feedService.watchListPost();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await widget.onRefresh();
        },
        child: StreamBuilder<List<Post?>>(
            stream: listPost,
            builder: (context, snapshot) {
              final List<Post?> posts = snapshot.data ?? [];
              if (posts.isEmpty) {
                return const Center(
                  child: SingleChildScrollView(
                    child: Text('Không có bài viết nào'),
                  ),
                );
              }
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return PostWidget(
                    post: posts[index]!,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 8);
                },
                itemCount: posts.length,
              );
            }),
      ),
    );
  }
}
