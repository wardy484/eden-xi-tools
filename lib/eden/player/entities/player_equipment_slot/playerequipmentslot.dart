import 'package:freezed_annotation/freezed_annotation.dart';

part 'playerequipmentslot.freezed.dart';
part 'playerequipmentslot.g.dart';

@freezed
abstract class PlayerEquipmentSlot with _$PlayerEquipmentSlot {
  factory PlayerEquipmentSlot(
    @JsonKey(name: 'equipslotid') int equipSlotId,
    @nullable @JsonKey(name: 'itemid') int itemId,
    @nullable String name,
    @nullable String signature,
  ) = _PlayerEquipmentSlot;

  factory PlayerEquipmentSlot.fromJson(Map<String, dynamic> json) =>
      _$PlayerEquipmentSlotFromJson(json);
}
