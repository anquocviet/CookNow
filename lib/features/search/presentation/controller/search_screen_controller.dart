import 'package:cooknow/features/search/application/search_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_screen_controller.g.dart';

@riverpod
class SearchScreenController extends _$SearchScreenController {
  @override
  FutureOr<void> build() {}

  Future<void> deleteSearch(String idSearch) async {
    final searchService = ref.read(searchServiceProvider);
    state = await AsyncValue.guard(() => searchService.deleteSearch(idSearch));
    if (state.hasError) throw state.error!;
  }
}
