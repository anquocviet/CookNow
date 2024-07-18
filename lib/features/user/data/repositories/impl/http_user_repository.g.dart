// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_user_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'f421d88b4047b02f5db7cd701ef3ad7f86630835';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = Provider<HttpUserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = ProviderRef<HttpUserRepository>;
String _$userStateChangesHash() => r'2588af169c8e58890b3c66c04fee50108ef9635d';

/// See also [userStateChanges].
@ProviderFor(userStateChanges)
final userStateChangesProvider = StreamProvider<User?>.internal(
  userStateChanges,
  name: r'userStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserStateChangesRef = StreamProviderRef<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
