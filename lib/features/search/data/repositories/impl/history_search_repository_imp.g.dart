// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_search_repository_imp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$historySearchRepositoryHash() =>
    r'71a1660cc48fc0b12681d4f45fef3496ce7a2edf';

/// See also [historySearchRepository].
@ProviderFor(historySearchRepository)
final historySearchRepositoryProvider =
    AutoDisposeProvider<HistorySearchRepositoryImp>.internal(
  historySearchRepository,
  name: r'historySearchRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$historySearchRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HistorySearchRepositoryRef
    = AutoDisposeProviderRef<HistorySearchRepositoryImp>;
String _$searchStateChangeHash() => r'0e2ff37698171044143700508b9e67c965b770be';

/// See also [searchStateChange].
@ProviderFor(searchStateChange)
final searchStateChangeProvider =
    AutoDisposeStreamProvider<List<HistorySearch>>.internal(
  searchStateChange,
  name: r'searchStateChangeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchStateChangeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchStateChangeRef
    = AutoDisposeStreamProviderRef<List<HistorySearch>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
