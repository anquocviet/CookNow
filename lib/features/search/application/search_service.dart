import 'package:cooknow/features/search/data/repositories/impl/history_search_repository_imp.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_service.g.dart';

class SearchService {
  SearchService({required this.ref});

  final SearchServiceRef ref;

  Future<Map<String, List<dynamic>>> search(
      String data, double take, double skip) async {
    final searchRepository = ref.read(historySearchRepositoryProvider);
    return searchRepository.search(data, take, skip);
  }

  Future<void> getHistorySearch() async {
    final userRepository = ref.read(userRepositoryProvider);
    final searchRepository = ref.read(historySearchRepositoryProvider);
    final userId = userRepository.currentUser!.id;
    await searchRepository.getHistorySearch(userId);
  }

  Future<void> addHistorySearch(String data) async {
    final userRepository = ref.read(userRepositoryProvider);
    final searchRepository = ref.read(historySearchRepositoryProvider);
    final userId = userRepository.currentUser!.id;
    await searchRepository.addHistorySearch(userId, data);
  }

  Future<void> deleteSearch(String idSearch) async {
    final userRepository = ref.read(userRepositoryProvider);
    final searchRepository = ref.read(historySearchRepositoryProvider);
    final userId = userRepository.currentUser!.id;
    await searchRepository.removeSearch(userId, idSearch);
  }

  Future<void> clearHistory() async {
    print('clearing history');
  }
}

@riverpod
SearchService searchService(SearchServiceRef ref) {
  return SearchService(ref: ref);
}
