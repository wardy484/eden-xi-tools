import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_item.freezed.dart';
part 'search_result_item.g.dart';

@freezed
abstract class SearchResultItem with _$SearchResultItem {
  factory SearchResultItem({
    int id,
    String name,
    String sort,
    String key,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}
