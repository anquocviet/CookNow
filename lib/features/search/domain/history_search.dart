import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_search.freezed.dart';
part 'history_search.g.dart';

@freezed
class HistorySearch with _$HistorySearch {
  factory HistorySearch({
    required String id,
    required String data,
    @JsonKey(name: 'date_time') required String dateTime,
  }) = _HistorySearch;

  factory HistorySearch.fromJson(Map<String, dynamic> json) =>
      _$HistorySearchFromJson(json);
}
