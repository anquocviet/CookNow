import 'package:cooknow/features/authentication/data/repositories/impl/http_auth_repository.dart';
import 'package:cooknow/features/user/data/repositories/impl/http_user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

class AuthService {
  AuthService(this.ref);
  final Ref ref;

  Future<void> login(String username, String password) async {
    final authRepository = ref.read(authRepositoryProvider);
    final userRepository = ref.read(userRepositoryProvider);
    await authRepository.login(username, password);
    userRepository.getUser(authRepository.currentAccount!.id);
  }
}

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(ref);
}
