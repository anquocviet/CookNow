import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/domain/user/user.dart';

abstract class UserRepository {
  Future<User?> fetchUser(String id);
  Future<void> fetchUserWhenLogin(String id);
  Stream<User?> get watchUser;
  Future<void> updateUser(UpdateUserDto dto);
  Future<void> dispose();
}
