import 'package:cooknow/features/user/domain/user/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
}
