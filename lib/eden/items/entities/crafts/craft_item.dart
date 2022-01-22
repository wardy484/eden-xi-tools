import 'package:freezed_annotation/freezed_annotation.dart';

part 'craft_item.freezed.dart';
part 'craft_item.g.dart';

@freezed
class CraftItem with _$CraftItem {
  factory CraftItem({
    required String craft,
    required int level,
  }) = _CraftItem;

  factory CraftItem.fromJson(Map<String, dynamic> json) =>
      _$CraftItemFromJson(json);
}
