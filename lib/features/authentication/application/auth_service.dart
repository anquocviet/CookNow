import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/impl/auth_repository_imp.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

class AuthService {
  AuthService(this.ref);
  final Ref ref;

  Future<String?> get token async {
    final storeLocalData = StoreLocalData();
    return await storeLocalData.getData(StoreVariable.token);
  }

  Future<void> login(String username, String password) async {
    final authRepository = ref.read(authRepositoryProvider);
    final userRepository = ref.read(userRepositoryProvider);
    final userService = ref.read(userServiceProvider);
    await authRepository.login(username, password);
    await userService.getUser(userRepository.currentUser!.id);
  }

  Future<void> register(RegisterDto registerDto) async {
    final authRepository = ref.read(authRepositoryProvider);
    await authRepository.register(registerDto);
  }

  Future<void> logout() async {
    final authRepository = ref.read(authRepositoryProvider);
    await authRepository.logout();
  }

  Future<void> validateToken() async {
    final authRepository = ref.read(authRepositoryProvider);
    final token = await this.token;
    if (token != null) await authRepository.validateToken(token);
  }

  Future<void> checkUserNotExist(String data) async {
    final authRepository = ref.read(authRepositoryProvider);
    await authRepository.checkUserNotExist(data);
  }
}

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(ref);
}
