part of 'player_equipment_bloc.dart';

@freezed
class PlayerEquipmentEvent with _$PlayerEquipmentEvent {
  const factory PlayerEquipmentEvent.started() = _Started;
  const factory PlayerEquipmentEvent.fetched(String playerName) = _Fetched;
}
