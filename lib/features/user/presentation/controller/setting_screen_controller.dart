import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_screen_controller.g.dart';

@riverpod
class SettingScreenController extends _$SettingScreenController {
  @override
  FutureOr<void> build() {}

  Future<void> logout() async {
    final authService = ref.read(authServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authService.logout());
    if (state.hasError) throw state.error!;
  }
}
