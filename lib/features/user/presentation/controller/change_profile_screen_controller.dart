import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_profile_screen_controller.g.dart';

@riverpod
class ChangeProfileScreenController extends _$ChangeProfileScreenController {
  @override
  FutureOr<void> build() {}

  Future<void> changeAvatar() async {
    final userService = ref.read(userServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => userService.changeAvatar());
    if (state.hasError) throw state.error!;
  }

  Future<void> updateUser(UpdateUserDto dto) async {
    final userService = ref.read(userServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => userService.updateUser(dto));
    if (state.hasError) throw state.error!;
  }
}
