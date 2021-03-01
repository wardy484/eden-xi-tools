part of 'item_owners_bloc.dart';

@freezed
abstract class ItemOwnersEvent with _$ItemOwnersEvent {
  const factory ItemOwnersEvent.started() = _Started;
  const factory ItemOwnersEvent.requested(int id) = _Requested;
}
