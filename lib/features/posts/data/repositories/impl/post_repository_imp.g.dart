// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_repository_imp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postRepositoryHash() => r'fae1466d3781eb6f76ee8d5604b3a7aa7749b5b3';

/// See also [postRepository].
@ProviderFor(postRepository)
final postRepositoryProvider = Provider<PostRepositoryImp>.internal(
  postRepository,
  name: r'postRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$postRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostRepositoryRef = ProviderRef<PostRepositoryImp>;
String _$postStateChangesHash() => r'3e3e97eb64a244591384029ba8f950a2595066ac';

/// See also [postStateChanges].
@ProviderFor(postStateChanges)
final postStateChangesProvider = StreamProvider<List<Post?>>.internal(
  postStateChanges,
  name: r'postStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$postStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostStateChangesRef = StreamProviderRef<List<Post?>>;
String _$currentPostStateChangesHash() =>
    r'81c129bd2ffa13f2c973b6c2e102c49031544c16';

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

/// See also [currentPostStateChanges].
@ProviderFor(currentPostStateChanges)
const currentPostStateChangesProvider = CurrentPostStateChangesFamily();

/// See also [currentPostStateChanges].
class CurrentPostStateChangesFamily extends Family<AsyncValue<Post?>> {
  /// See also [currentPostStateChanges].
  const CurrentPostStateChangesFamily();

  /// See also [currentPostStateChanges].
  CurrentPostStateChangesProvider call(
    String id,
  ) {
    return CurrentPostStateChangesProvider(
      id,
    );
  }

  @override
  CurrentPostStateChangesProvider getProviderOverride(
    covariant CurrentPostStateChangesProvider provider,
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
  String? get name => r'currentPostStateChangesProvider';
}

/// See also [currentPostStateChanges].
class CurrentPostStateChangesProvider extends AutoDisposeStreamProvider<Post?> {
  /// See also [currentPostStateChanges].
  CurrentPostStateChangesProvider(
    String id,
  ) : this._internal(
          (ref) => currentPostStateChanges(
            ref as CurrentPostStateChangesRef,
            id,
          ),
          from: currentPostStateChangesProvider,
          name: r'currentPostStateChangesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentPostStateChangesHash,
          dependencies: CurrentPostStateChangesFamily._dependencies,
          allTransitiveDependencies:
              CurrentPostStateChangesFamily._allTransitiveDependencies,
          id: id,
        );

  CurrentPostStateChangesProvider._internal(
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
    Stream<Post?> Function(CurrentPostStateChangesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentPostStateChangesProvider._internal(
        (ref) => create(ref as CurrentPostStateChangesRef),
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
  AutoDisposeStreamProviderElement<Post?> createElement() {
    return _CurrentPostStateChangesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentPostStateChangesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CurrentPostStateChangesRef on AutoDisposeStreamProviderRef<Post?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CurrentPostStateChangesProviderElement
    extends AutoDisposeStreamProviderElement<Post?>
    with CurrentPostStateChangesRef {
  _CurrentPostStateChangesProviderElement(super.provider);

  @override
  String get id => (origin as CurrentPostStateChangesProvider).id;
}

String _$watchRemovePostHash() => r'97dbfc50c2e44e72acd7e859041f1bdca3cf91ae';

/// See also [watchRemovePost].
@ProviderFor(watchRemovePost)
const watchRemovePostProvider = WatchRemovePostFamily();

/// See also [watchRemovePost].
class WatchRemovePostFamily extends Family<StreamSubscription<void>> {
  /// See also [watchRemovePost].
  const WatchRemovePostFamily();

  /// See also [watchRemovePost].
  WatchRemovePostProvider call(
    String postId,
  ) {
    return WatchRemovePostProvider(
      postId,
    );
  }

  @override
  WatchRemovePostProvider getProviderOverride(
    covariant WatchRemovePostProvider provider,
  ) {
    return call(
      provider.postId,
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
  String? get name => r'watchRemovePostProvider';
}

/// See also [watchRemovePost].
class WatchRemovePostProvider
    extends AutoDisposeProvider<StreamSubscription<void>> {
  /// See also [watchRemovePost].
  WatchRemovePostProvider(
    String postId,
  ) : this._internal(
          (ref) => watchRemovePost(
            ref as WatchRemovePostRef,
            postId,
          ),
          from: watchRemovePostProvider,
          name: r'watchRemovePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchRemovePostHash,
          dependencies: WatchRemovePostFamily._dependencies,
          allTransitiveDependencies:
              WatchRemovePostFamily._allTransitiveDependencies,
          postId: postId,
        );

  WatchRemovePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final String postId;

  @override
  Override overrideWith(
    StreamSubscription<void> Function(WatchRemovePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchRemovePostProvider._internal(
        (ref) => create(ref as WatchRemovePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<StreamSubscription<void>> createElement() {
    return _WatchRemovePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchRemovePostProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchRemovePostRef on AutoDisposeProviderRef<StreamSubscription<void>> {
  /// The parameter `postId` of this provider.
  String get postId;
}

class _WatchRemovePostProviderElement
    extends AutoDisposeProviderElement<StreamSubscription<void>>
    with WatchRemovePostRef {
  _WatchRemovePostProviderElement(super.provider);

  @override
  String get postId => (origin as WatchRemovePostProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
