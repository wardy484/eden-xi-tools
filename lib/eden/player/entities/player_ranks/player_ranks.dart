import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_ranks.freezed.dart';
part 'player_ranks.g.dart';

@freezed
abstract class PlayerRanks with _$PlayerRanks {
  factory PlayerRanks({
    int bastok,
    int sandoria,
    int windurst,
  }) = _PlayerRanks;

  factory PlayerRanks.fromJson(Map<String, dynamic> json) =>
      _$PlayerRanksFromJson(json);
}
