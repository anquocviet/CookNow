abstract class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> validateToken(String token);
  Future<void> logout();
}
