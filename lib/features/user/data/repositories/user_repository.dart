import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/domain/account/account.dart';

abstract class UserRepository {
  Future<void> getUser(String id);
  Future<void> updateUser(UpdateUserDto dto);
  Future<void> setAccount(Account account);
}
