import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  factory SearchResult({
    int total,
    List<SearchResultItem> items,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
