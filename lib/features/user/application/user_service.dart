import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_service.g.dart';

class UserService {
  UserService(this.ref);

  final Ref ref;

  Future<void> getUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.getUser(id);
  }

  Future<User> getCurrentUser() async {
    final userRepository = ref.read(userRepositoryProvider);
    return userRepository.currentUser!;
  }

  Future<void> setAccount(Account account) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.setAccount(account);
  }
}

@Riverpod(keepAlive: true)
UserService userService(UserServiceRef ref) {
  return UserService(ref);
}
