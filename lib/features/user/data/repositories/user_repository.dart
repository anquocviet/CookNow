import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:cooknow/features/user/domain/user/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
  Future<User> setUser(User user);
  Future<void> setAccount(Account account);
}
