// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchServiceHash() => r'4eef8a4bb9505d2c9309b92fffa36ede4bb6056b';

/// See also [searchService].
@ProviderFor(searchService)
final searchServiceProvider = AutoDisposeProvider<SearchService>.internal(
  searchService,
  name: r'searchServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchServiceRef = AutoDisposeProviderRef<SearchService>;
String _$searchHash() => r'2a0710baa67470534d8d71dee86de41081403b5c';

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

/// See also [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// See also [search].
class SearchFamily extends Family<AsyncValue<Map<String, List<dynamic>>>> {
  /// See also [search].
  const SearchFamily();

  /// See also [search].
  SearchProvider call(
    String data,
    double take,
    double skip,
  ) {
    return SearchProvider(
      data,
      take,
      skip,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.data,
      provider.take,
      provider.skip,
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
  String? get name => r'searchProvider';
}

/// See also [search].
class SearchProvider
    extends AutoDisposeFutureProvider<Map<String, List<dynamic>>> {
  /// See also [search].
  SearchProvider(
    String data,
    double take,
    double skip,
  ) : this._internal(
          (ref) => search(
            ref as SearchRef,
            data,
            take,
            skip,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
          data: data,
          take: take,
          skip: skip,
        );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
    required this.take,
    required this.skip,
  }) : super.internal();

  final String data;
  final double take;
  final double skip;

  @override
  Override overrideWith(
    FutureOr<Map<String, List<dynamic>>> Function(SearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        (ref) => create(ref as SearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
        take: take,
        skip: skip,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, List<dynamic>>> createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider &&
        other.data == data &&
        other.take == take &&
        other.skip == skip;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);
    hash = _SystemHash.combine(hash, take.hashCode);
    hash = _SystemHash.combine(hash, skip.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchRef on AutoDisposeFutureProviderRef<Map<String, List<dynamic>>> {
  /// The parameter `data` of this provider.
  String get data;

  /// The parameter `take` of this provider.
  double get take;

  /// The parameter `skip` of this provider.
  double get skip;
}

class _SearchProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, List<dynamic>>>
    with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  String get data => (origin as SearchProvider).data;
  @override
  double get take => (origin as SearchProvider).take;
  @override
  double get skip => (origin as SearchProvider).skip;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
