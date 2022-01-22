import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_search_result_item.freezed.dart';
part 'player_search_result_item.g.dart';

@freezed
class PlayerSearchResultItem with _$PlayerSearchResultItem {
  factory PlayerSearchResultItem({
    required String avatar,
    required String charname,
    required String jobString,
  }) = _PlayerSearchResultItem;

  factory PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerSearchResultItemFromJson(json);
}
