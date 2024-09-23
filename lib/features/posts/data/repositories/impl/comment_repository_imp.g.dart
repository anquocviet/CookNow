// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_repository_imp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentRepositoryHash() => r'f6f26c67270fe992964a3759f259c54c2ec33f10';

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
String _$watchCreateCommentHash() =>
    r'5b5f3ec19358b58b456c2d2ac395c6aed78ba655';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [watchCreateComment].
@ProviderFor(watchCreateComment)
const watchCreateCommentProvider = WatchCreateCommentFamily();

/// See also [watchCreateComment].
class WatchCreateCommentFamily extends Family<StreamSubscription<void>> {
  /// See also [watchCreateComment].
  const WatchCreateCommentFamily();

  /// See also [watchCreateComment].
  WatchCreateCommentProvider call(
    String id,
  ) {
    return WatchCreateCommentProvider(
      id,
    );
  }

  @override
  WatchCreateCommentProvider getProviderOverride(
    covariant WatchCreateCommentProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'watchCreateCommentProvider';
}

/// See also [watchCreateComment].
class WatchCreateCommentProvider
    extends AutoDisposeProvider<StreamSubscription<void>> {
  /// See also [watchCreateComment].
  WatchCreateCommentProvider(
    String id,
  ) : this._internal(
          (ref) => watchCreateComment(
            ref as WatchCreateCommentRef,
            id,
          ),
          from: watchCreateCommentProvider,
          name: r'watchCreateCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchCreateCommentHash,
          dependencies: WatchCreateCommentFamily._dependencies,
          allTransitiveDependencies:
              WatchCreateCommentFamily._allTransitiveDependencies,
          id: id,
        );

  WatchCreateCommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    StreamSubscription<void> Function(WatchCreateCommentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchCreateCommentProvider._internal(
        (ref) => create(ref as WatchCreateCommentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<StreamSubscription<void>> createElement() {
    return _WatchCreateCommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchCreateCommentProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchCreateCommentRef
    on AutoDisposeProviderRef<StreamSubscription<void>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WatchCreateCommentProviderElement
    extends AutoDisposeProviderElement<StreamSubscription<void>>
    with WatchCreateCommentRef {
  _WatchCreateCommentProviderElement(super.provider);

  @override
  String get id => (origin as WatchCreateCommentProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
