import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_item.freezed.dart';
part 'search_result_item.g.dart';

@freezed
class SearchResultItem with _$SearchResultItem {
  factory SearchResultItem({
    required int id,
    required String name,
    required String sort,
    required String key,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}
