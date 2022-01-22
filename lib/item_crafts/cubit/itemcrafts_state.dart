part of 'itemcrafts_cubit.dart';

@freezed
class ItemcraftsState with _$ItemcraftsState {
  const factory ItemcraftsState.initial() = _Initial;
  const factory ItemcraftsState.loading() = _Loading;
  const factory ItemcraftsState.Loaded(List<Craft> crafts) = _Loaded;
}
