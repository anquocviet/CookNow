// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_imp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'6eb2fc4125caa16eea3357fbaed6f8793b9157bd';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = Provider<UserRepositoryImp>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = ProviderRef<UserRepositoryImp>;
String _$userStateChangesHash() => r'fecd798a5128716b55ea4e34942fba33b9dc0f41';

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
