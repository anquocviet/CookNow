import 'package:cooknow/features/user/domain/user/user.dart';

abstract class AuthRepository {
  Future<User?> login(String email, String password);
  Future<void> logout();
}
