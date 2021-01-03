import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_crafts.freezed.dart';
part 'player_crafts.g.dart';

@freezed
abstract class PlayerCrafts with _$PlayerCrafts {
  factory PlayerCrafts({
    @JsonKey(name: 'Alchemy') double alchemy,
    @JsonKey(name: 'Bonecraft') double bonecraft,
    @JsonKey(name: 'Clothcraft') double clothcraft,
    @JsonKey(name: 'Cooking') double cooking,
    @JsonKey(name: 'Fishing') double fishing,
    @JsonKey(name: 'Goldsmithing') double goldsmithing,
    @JsonKey(name: 'Leathercraft') double leathercraft,
    @JsonKey(name: 'Smithing') double smithing,
    @JsonKey(name: 'Synergy') double synergy,
    @JsonKey(name: 'Woodworking') double woodworking,
  }) = _PlayerCrafts;

  factory PlayerCrafts.fromJson(Map<String, dynamic> json) =>
      _$PlayerCraftsFromJson(json);
}
