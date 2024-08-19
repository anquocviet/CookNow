import 'package:cooknow/core/service/firebase_service.dart';
import 'package:cooknow/core/service/image_pick_service.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_service.g.dart';

class UserService {
  UserService(this.ref);

  final Ref ref;

  Future<User?> fetchUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    return userRepository.fetchUser(id);
  }

  Future<void> fetchUserWhenLogin(String id) async {
    final authService = ref.read(authServiceProvider);
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.fetchUserWhenLogin(id);
    Account account = Account.fromJson(decodeToken(await authService.token));
    await setAccount(account);
  }

  Future<void> disposeUser() async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.dispose();
  }

  Future<void> updateUser(UpdateUserDto dto) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.updateUser(dto);
  }

  Stream<User?> watchUser() {
    final userRepository = ref.read(userRepositoryProvider);
    return userRepository.watchUser;
  }

  Future<void> setAccount(Account account) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.setAccount(account);
  }

  Future<void> changeAvatar() async {
    final imagePick = ref.read(imagePickServiceProvider);
    final userRepository = ref.read(userRepositoryProvider);
    final firebase = ref.read(firebaseServiceProvider);
    final user = userRepository.currentUser;
    final list = await imagePick.pickImage(ImageSource.gallery);
    String url = await firebase.uploadFile(list.first);
    UpdateUserDto dto = UpdateUserDto.fromJson(user!
        .copyWith(
          avatar: url,
        )
        .toJson());
    await updateUser(dto);
  }
}

@riverpod
UserService userService(UserServiceRef ref) {
  return UserService(ref);
}

@riverpod
Future<User?> fetchUser(FetchUserRef ref, String id) async {
  final userService = ref.read(userServiceProvider);
  return userService.fetchUser(id);
}
