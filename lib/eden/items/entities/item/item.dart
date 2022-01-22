import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const Item._();

  factory Item({
    required int id,
    String? armor,
    required String desc,
    required String key,
    required String name,
    required String sort,
    required bool stackable,
  }) = _Item;

  String get trimmedDesc => desc.replaceAll("\n", " ");

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
