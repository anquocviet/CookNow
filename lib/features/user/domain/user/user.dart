import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required int gender,
    required int age,
    required String living,
    required Account account,
    required String bio,
    required String email,
    required String phone,
    required String avatar,
    @JsonKey(name: 'posts_saved') @Default([]) List<String> postsSaved,
    @Default([]) List<String> following,
    @Default([]) List<String> follower,
    @Default([]) List<String> blocks,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required String username,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
