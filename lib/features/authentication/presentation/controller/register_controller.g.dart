// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerUserHash() => r'920f624cd105ff43bf99efa2e3efbe0f55e25339';

/// See also [registerUser].
@ProviderFor(registerUser)
final registerUserProvider = Provider<RegisterDto>.internal(
  registerUser,
  name: r'registerUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegisterUserRef = ProviderRef<RegisterDto>;
String _$registerControllerHash() =>
    r'8868b0ceac599a6e766650f643f5e40ced4bca40';

/// See also [RegisterController].
@ProviderFor(RegisterController)
final registerControllerProvider =
    AsyncNotifierProvider<RegisterController, void>.internal(
  RegisterController.new,
  name: r'registerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterController = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
