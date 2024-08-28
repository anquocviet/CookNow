import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/search/application/search_service.dart';
import 'package:cooknow/features/search/data/repositories/impl/history_search_repository_imp.dart';
import 'package:cooknow/features/search/domain/history_search.dart';
import 'package:cooknow/features/search/presentation/controller/search_screen_controller.dart';
import 'package:cooknow/features/search/presentation/widget/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  void initState() {
    _loadSearch();
    super.initState();
  }

  Future<void> _loadSearch() async {
    try {
      await ref.read(searchServiceProvider).getHistorySearch();
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e');
    }
  }

  Future<void> _removeSearch(String idSearch) async {
    try {
      await ref
          .read(searchScreenControllerProvider.notifier)
          .deleteSearch(idSearch);
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<HistorySearch>> searchState =
        ref.watch(searchStateChangeProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: RefreshIndicator(
              onRefresh: () async => await _loadSearch(),
              child: ListView(
                children: [
                  switch (searchState) {
                    AsyncValue(:final error?) => Text('Error: $error'),
                    AsyncValue(:final valueOrNull?) => valueOrNull.isEmpty
                        ? const Text('Không có lịch sử tìm kiếm')
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: valueOrNull.length,
                            itemBuilder: (context, index) {
                              final history = valueOrNull[index];
                              return ListTile(
                                onTap: () => context.go(
                                    '${RouteName.search}/${RouteName.resultSearch}',
                                    extra: history.data),
                                leading: const Icon(Icons.history),
                                title: Text(history.data),
                                trailing: GestureDetector(
                                  onTap: () => _removeSearch(history.id),
                                  child: const Icon(Icons.clear),
                                ),
                              );
                            },
                          ),
                    _ => const CircularProgressIndicator(),
                  }

                  // const Text('Các món ăn đã xem gần đây'),
                  // SizedBox(
                  //   height: 100,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: ListView.builder(
                  //     itemCount: 3,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return const SizedBox(
                  //         width: 200,
                  //         child: ListTile(
                  //           leading: Icon(Icons.history),
                  //           title: Text('Cà phê'),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 500,
                  //   child: GridView.builder(
                  //       physics: const NeverScrollableScrollPhysics(),
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //               crossAxisCount: 2),
                  //       itemCount: 3,
                  //       itemBuilder: (context, index) {
                  //         return const ListTile(
                  //           leading: Icon(Icons.hd_outlined),
                  //           title: Text('Cà phê'),
                  //         );
                  //       }),
                  // )
                ],
              ),
            ),
          )),
    );
  }
}
