import 'package:cooknow/features/search/application/search_service.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_search_controller.g.dart';

@riverpod
class UserSearchController extends _$UserSearchController {
  @override
  FutureOr<List<User>?> build() {
    return null;
  }

  Future<void> searchUser(String data, double take, double skip) async {
    final searchService = ref.read(searchServiceProvider);
    state = await AsyncValue.guard(
        () => searchService.searchUser(data, take, skip));
  }
}
