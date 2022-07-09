import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_equipment_state.freezed.dart';

@freezed
class PlayerEquipmentState with _$PlayerEquipmentState {
  const factory PlayerEquipmentState.initial() = _Initial;
  const factory PlayerEquipmentState.loading() = _Loading;
  const factory PlayerEquipmentState.loaded(PlayerEquipment equipment) =
      _Loaded;
}
