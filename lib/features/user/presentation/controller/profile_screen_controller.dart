import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_screen_controller.g.dart';

@riverpod
class ProfileScreenController extends _$ProfileScreenController {
  @override
  FutureOr build() {}
}

@riverpod
Future<User> getCurrentUser(GetCurrentUserRef ref) {
  return ref.watch(userServiceProvider).getCurrentUser();
}
