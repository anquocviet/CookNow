import 'package:cooknow/core/service/firebase_service.dart';
import 'package:cooknow/core/service/image_pick_service.dart';
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

  Future<void> getUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.getUser(id);
  }

  Future<void> updateUser(UpdateUserDto dto) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.updateUser(dto);
  }

  Future<User> getCurrentUser() async {
    final userRepository = ref.watch(userRepositoryProvider);
    return userRepository.currentUser!;
  }

  Future<void> setAccount(Account account) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.setAccount(account);
  }

  Future<void> changeAvatar() async {
    final imagePick = ref.read(imagePickServiceProvider);
    final firebase = ref.read(firebaseServiceProvider);
    final user = await getCurrentUser();
    final list = await imagePick.pickImage(ImageSource.gallery);
    String url = await firebase.uploadFile(list.first);
    UpdateUserDto dto = UpdateUserDto.fromJson(user
        .copyWith(
          avatar: url,
        )
        .toJson());
    await updateUser(dto);
  }
}

@Riverpod(keepAlive: true)
UserService userService(UserServiceRef ref) {
  return UserService(ref);
}
