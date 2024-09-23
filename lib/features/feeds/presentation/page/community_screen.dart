import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/widget/custom_circular_progress_indicator.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/feeds/presentation/controller/feed_controller.dart';
import 'package:cooknow/features/feeds/presentation/widget/post_widget.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommunityScreen extends ConsumerStatefulWidget {
  const CommunityScreen({super.key, required this.onRefresh});

  final Future<void> Function() onRefresh;

  @override
  ConsumerState<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends ConsumerState<CommunityScreen> {
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
    try {
      page++;
      await ref
          .read(feedControllerProvider.notifier)
          .fetchPostForUser('', page * 5, page * 5 - 5);
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra: $e');
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
    final state = ref.watch(feedControllerProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          page = 1;
          await widget.onRefresh();
        },
        child: StreamBuilder<List<Post?>>(
            stream: listPost,
            builder: (context, snapshot) {
              final List<Post?> posts = snapshot.data ?? [];
              if (posts.isEmpty) {
                return Container(
                  alignment: Alignment.center,
                  child: ListView(
                    children: const [
                      Center(
                        heightFactor: 25,
                        child: Text('Không có bài viết nào'),
                      ),
                    ],
                  ),
                );
              }
              return ListView.separated(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  if (index == posts.length - 1) {
                    return Column(
                      children: [
                        PostWidget(post: posts[index]!),
                        if (state.isLoading)
                          const CustomCircularProgressIndicator(
                            color: Colors.deepOrange,
                          ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }
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
