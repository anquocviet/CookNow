import 'package:cooknow/features/authentication/data/repositories/impl/http_auth_repository.dart';
import 'package:cooknow/features/user/data/repositories/impl/http_user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginScreenController extends _$LoginScreenController {
  @override
  FutureOr<void> build() {}

  FutureOr<void> login(String username, String password) async {
    final authRepository = ref.read(authRepositoryProvider);
    final userRepository = ref.read(userRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await authRepository.login(username, password);
      return userRepository.getUser(authRepository.currentAccount!.id)
          as FutureOr<void>;
    });
  }
}
