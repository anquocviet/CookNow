import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:cooknow/features/user/domain/user/user.dart';

abstract class UserRepository {
  Future<void> fetchUser(String id);
  Stream<User?> get watchUser;
  Future<void> updateUser(UpdateUserDto dto);
  Future<void> setAccount(Account account);
}
