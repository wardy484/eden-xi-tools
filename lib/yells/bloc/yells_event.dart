part of 'yells_bloc.dart';

@freezed
abstract class YellsEvent with _$YellsEvent {
  const factory YellsEvent.started() = _Started;
  const factory YellsEvent.requested() = _Requested;
}
