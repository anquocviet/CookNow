import 'package:cooknow/features/user/domain/account/account.dart';
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
    // required List<HistorySearch> top5HistorySearch,
    required List<String> following,
    required List<String> followers,
    required List<String> blocks,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
