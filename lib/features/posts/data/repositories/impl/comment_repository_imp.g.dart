// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_repository_imp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentRepositoryHash() => r'8cfb5f1dd8ad08fe628ac4bab5b8cf4d4b4a6ef5';

/// See also [commentRepository].
@ProviderFor(commentRepository)
final commentRepositoryProvider = Provider<CommentRepositoryImp>.internal(
  commentRepository,
  name: r'commentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommentRepositoryRef = ProviderRef<CommentRepositoryImp>;
String _$commentStateChangesHash() =>
    r'94d8cc3f8d26f99894a7e0dd169240ff15e0685f';

/// See also [commentStateChanges].
@ProviderFor(commentStateChanges)
final commentStateChangesProvider = StreamProvider<List<Comment?>>.internal(
  commentStateChanges,
  name: r'commentStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commentStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommentStateChangesRef = StreamProviderRef<List<Comment?>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
