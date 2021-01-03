import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_bazaar_item.freezed.dart';
part 'player_bazaar_item.g.dart';

@freezed
abstract class PlayerBazaarItem with _$PlayerBazaarItem {
  factory PlayerBazaarItem({
    @JsonKey(name: 'bazaar') int bazaar,
    @JsonKey(name: 'name') String itemName,
  }) = _PlayerBazaarItem;

  factory PlayerBazaarItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerBazaarItemFromJson(json);
}
