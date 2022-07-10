import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'yells_state.freezed.dart';

@freezed
class YellsState with _$YellsState {
  const factory YellsState.initial() = _Initial;
  const factory YellsState.loading() = _Loading;
  const factory YellsState.loaded(List<Yell> yells) = _Loaded;
}
