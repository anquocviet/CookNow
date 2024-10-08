import 'package:cooknow/core/service/firebase_service.dart';
import 'package:cooknow/core/service/image_pick_service.dart';
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_service.g.dart';

class UserService {
  UserService(this.ref);

  final UserServiceRef ref;

  Future<User?> fetchUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    return userRepository.fetchUser(id);
  }

  Future<void> fetchUserWhenLogin(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.fetchUserWhenLogin(id);
  }

  Future<void> disposeUser() async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.dispose();
  }

  Future<void> updateUser(UpdateUserDto dto) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.updateUser(dto);
  }

  Future<void> followUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.followUser(id);
  }

  Future<void> unFollowUser(String id) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.unFollowUser(id);
  }

  Future<void> watchUserFollow() async {
    ref.watch(watchUserFollowProvider);
  }

  Stream<User?> watchUser() {
    final userRepository = ref.read(userRepositoryProvider);
    return userRepository.watchUser;
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
