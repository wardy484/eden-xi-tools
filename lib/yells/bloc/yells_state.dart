part of 'yells_bloc.dart';

@freezed
abstract class YellsState with _$YellsState {
  const factory YellsState.initial() = _Initial;
  const factory YellsState.loading() = _Loading;
  const factory YellsState.loaded(List<Yell> yells) = _Loaded;
}
