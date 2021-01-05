import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  factory Item({
    int id,
    String armor,
    String desc,
    String key,
    String name,
    String sort,
    bool stackable,
  }) = _Item;

  @late
  String get trimmedDesc => desc.replaceAll("\n", " ");

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
