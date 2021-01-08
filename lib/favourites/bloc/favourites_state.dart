part of 'favourites_bloc.dart';

@freezed
abstract class FavouritesState<T> with _$FavouritesState {
  const factory FavouritesState.initial() = _Initial<T>;
  const factory FavouritesState.loading() = _Loading<T>;
  const factory FavouritesState.loaded(List<T> favourites) = _Loaded<T>;
}
