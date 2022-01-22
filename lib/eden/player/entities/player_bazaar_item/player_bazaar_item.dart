import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_bazaar_item.freezed.dart';
part 'player_bazaar_item.g.dart';

@freezed
class PlayerBazaarItem with _$PlayerBazaarItem {
  factory PlayerBazaarItem({
    @JsonKey(name: 'bazaar') required int bazaar,
    @JsonKey(name: 'name') required String itemName,
  }) = _PlayerBazaarItem;

  factory PlayerBazaarItem.fromJson(Map<String, dynamic> json) =>
      _$PlayerBazaarItemFromJson(json);
}
