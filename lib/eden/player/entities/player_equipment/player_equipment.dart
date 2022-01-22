import 'package:eden_xi_tools/eden/player/entities/player_equipment_slot/playerequipmentslot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_equipment.freezed.dart';
part 'player_equipment.g.dart';

@freezed
class PlayerEquipment with _$PlayerEquipment {
  const PlayerEquipment._(); // Added constructor

  factory PlayerEquipment(
    PlayerEquipmentSlot ammo,
    PlayerEquipmentSlot back,
    PlayerEquipmentSlot body,
    PlayerEquipmentSlot ear1,
    PlayerEquipmentSlot ear2,
    PlayerEquipmentSlot feet,
    PlayerEquipmentSlot hands,
    PlayerEquipmentSlot head,
    PlayerEquipmentSlot legs,
    PlayerEquipmentSlot ls1,
    PlayerEquipmentSlot ls2,
    PlayerEquipmentSlot main,
    PlayerEquipmentSlot neck,
    PlayerEquipmentSlot ranged,
    PlayerEquipmentSlot ring1,
    PlayerEquipmentSlot ring2,
    PlayerEquipmentSlot sub,
    PlayerEquipmentSlot waist,
  ) = _PlayerEquipment;

  factory PlayerEquipment.fromJson(Map<String, dynamic> json) =>
      _$PlayerEquipmentFromJson(json);
}
