import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';

part 'player_search_results.freezed.dart';
part 'player_search_results.g.dart';

@freezed
abstract class PlayerSearchResult with _$PlayerSearchResult {
  factory PlayerSearchResult({
    int total,
    @JsonKey(name: 'chars') List<PlayerSearchResultItem> items,
  }) = _PlayerSearchResult;

  factory PlayerSearchResult.fromJson(Map<String, dynamic> json) =>
      _$PlayerSearchResultFromJson(json);
}
