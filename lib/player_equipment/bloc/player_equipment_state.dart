part of 'player_equipment_bloc.dart';

@freezed
abstract class PlayerEquipmentState with _$PlayerEquipmentState {
  const factory PlayerEquipmentState.initial() = _Initial;
  const factory PlayerEquipmentState.loading() = _Loading;
  const factory PlayerEquipmentState.loaded(PlayerEquipment equipment) =
      _Loaded;
}
