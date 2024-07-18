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
    Account? account,
    required String bio,
    required String email,
    required String phone,
    required String avatar,
    // required List<HistorySearch> top5HistorySearch,
    @Default([]) List<String> following,
    @Default([]) List<String> followers,
    @Default([]) List<String> blocks,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
