part of 'favourites_bloc.dart';

@freezed
abstract class FavouritesEvent<T> with _$FavouritesEvent {
  const factory FavouritesEvent.started() = _Started<T>;
  const factory FavouritesEvent.saved(T item) = _Saved<T>;
  const factory FavouritesEvent.removed(T item) = _Removed<T>;
  const factory FavouritesEvent.sorted(int oldIndex, int newIndex) = _Sorted<T>;
}
