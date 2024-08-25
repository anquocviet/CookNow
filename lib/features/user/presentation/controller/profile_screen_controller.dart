import 'package:cooknow/features/user/application/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_screen_controller.g.dart';

@riverpod
class ProfileScreenController extends _$ProfileScreenController {
  @override
  FutureOr build() {}

  Future<void> followUser(String id) async {
    final userService = ref.read(userServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => userService.followUser(id));
    if (state.hasError) throw state.error!;
  }

  Future<void> unFollowUser(String id) async {
    final userService = ref.read(userServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => userService.unFollowUser(id));
    if (state.hasError) throw state.error!;
  }
}
