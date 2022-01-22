part of 'item_owners_bloc.dart';

@freezed
class ItemOwnersState with _$ItemOwnersState {
  const factory ItemOwnersState.initial() = _Initial;
  const factory ItemOwnersState.loading() = _Loading;
  const factory ItemOwnersState.success(List<Owner> owners) = _Success;
  const factory ItemOwnersState.error() = _Error;
}
