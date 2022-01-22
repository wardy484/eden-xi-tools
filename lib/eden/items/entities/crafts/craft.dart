import 'package:eden_xi_tools/eden/items/entities/crafts/craft_ingredient.dart';
import 'package:eden_xi_tools/eden/items/entities/crafts/craft_item.dart';
import 'package:eden_xi_tools/eden/items/entities/crafts/craft_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'craft.freezed.dart';
part 'craft.g.dart';

@freezed
class Craft with _$Craft {
  factory Craft({
    @JsonKey(name: 'BaseSell') required int baseSell,
    @JsonKey(name: 'Crystal') required int crystal,
    @JsonKey(name: 'HQCrystal') required int hqCrystal,
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'KeyItem') required int keyItem,
    @JsonKey(name: 'NoSale') required int noSale,
    @JsonKey(name: 'Type') required int type,
    @JsonKey(name: 'aH') required int ah,
    @JsonKey(name: 'ah_disabled') required int ahDisabled,
    @JsonKey(name: 'crafts') required List<CraftItem> crafts,
    @JsonKey(name: 'flags') required int flags,
    @JsonKey(name: 'ingredients') required List<CraftIngredient> ingredients,
    @JsonKey(name: 'itemid') required int itemId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'results') required List<CraftResult> results,
    @JsonKey(name: 'sortname') required String sortName,
    @JsonKey(name: 'stackSize') required int stackSize,
    @JsonKey(name: 'subid') required int subId,
  }) = _Craft;

  factory Craft.fromJson(Map<String, dynamic> json) => _$CraftFromJson(json);
}
