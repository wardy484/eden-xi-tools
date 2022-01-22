import 'package:freezed_annotation/freezed_annotation.dart';

part 'craft_ingredient.freezed.dart';
part 'craft_ingredient.g.dart';

@freezed
class CraftIngredient with _$CraftIngredient {
  factory CraftIngredient({
    required int count,
    required int id,
    required String name,
  }) = _CraftIngredient;

  factory CraftIngredient.fromJson(Map<String, dynamic> json) =>
      _$CraftIngredientFromJson(json);
}
