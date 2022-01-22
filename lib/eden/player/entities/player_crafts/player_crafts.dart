import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_crafts.freezed.dart';
part 'player_crafts.g.dart';

@freezed
class PlayerCrafts with _$PlayerCrafts {
  factory PlayerCrafts({
    @JsonKey(name: 'Alchemy') required double alchemy,
    @JsonKey(name: 'Bonecraft') required double bonecraft,
    @JsonKey(name: 'Clothcraft') required double clothcraft,
    @JsonKey(name: 'Cooking') required double cooking,
    @JsonKey(name: 'Fishing') required double fishing,
    @JsonKey(name: 'Goldsmithing') required double goldsmithing,
    @JsonKey(name: 'Leathercraft') required double leathercraft,
    @JsonKey(name: 'Smithing') required double smithing,
    @JsonKey(name: 'Synergy') required double synergy,
    @JsonKey(name: 'Woodworking') required double woodworking,
  }) = _PlayerCrafts;

  factory PlayerCrafts.fromJson(Map<String, dynamic> json) =>
      _$PlayerCraftsFromJson(json);
}
