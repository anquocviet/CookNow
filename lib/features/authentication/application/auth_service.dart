import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/impl/auth_repository_imp.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
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
    final userService = ref.read(userServiceProvider);

    final String token = await authRepository.login(username, password);
    // Must be before fetchUser, because fetchUser will use token to fetch user
    await StoreLocalData().saveData(StoreVariable.token, token);
    final decodedToken = decodeToken(token);
    final Account account = Account.fromJson(decodedToken);
    await userService.fetchUser(decodedToken['id']);
    await userService.setAccount(account);
  }

  Future<void> register(RegisterDto registerDto) async {
    final authRepository = ref.read(authRepositoryProvider);
    await authRepository.register(registerDto);
  }

  Future<void> logout() async {
    final storeLocalData = StoreLocalData();
    final userService = ref.read(userServiceProvider);
    await userService.disposeUser();
    await storeLocalData.removeData(StoreVariable.token);
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
