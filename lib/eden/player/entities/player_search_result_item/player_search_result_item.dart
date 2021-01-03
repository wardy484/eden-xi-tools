import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_search_result_item.freezed.dart';
part 'player_search_result_item.g.dart';

@freezed
abstract class PlayerSearchResultItem with _$PlayerSearchResultItem {
  factory PlayerSearchResultItem({
    String avatar,
    String charname,
    String jobString,
    String title,
  }) = _PlayerSearchResultItem;

  factory PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerSearchResultItemFromJson(json);
}
