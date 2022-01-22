import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_ranks.freezed.dart';
part 'player_ranks.g.dart';

@freezed
class PlayerRanks with _$PlayerRanks {
  factory PlayerRanks({
    required int bastok,
    required int sandoria,
    required int windurst,
  }) = _PlayerRanks;

  factory PlayerRanks.fromJson(Map<String, dynamic> json) =>
      _$PlayerRanksFromJson(json);
}
