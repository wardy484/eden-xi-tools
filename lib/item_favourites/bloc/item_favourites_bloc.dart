import 'package:eden_xi_tools/item_favourites/entities/item_favourites.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'item_favourites_event.dart';
part 'item_favourites_state.dart';

class ItemFavouritesBloc
    extends HydratedBloc<ItemFavouritesEvent, ItemFavouritesState> {
  ItemFavouritesBloc() : super(ItemFavouritesInitial()) {
    on<ItemFavouritesEvent>(_onEvent);
  }

  void _onEvent(
    ItemFavouritesEvent event,
    Emitter<ItemFavouritesState> emit,
  ) async {
    try {
      final currentState = state;

      if (event is ItemFavouritesReordered &&
          currentState is ItemFavouritesLoaded) {
        emit(ItemFavouritesLoading());

        var newIndex = event.newIndex;
        var favourites = currentState.favourites.all();

        if (event.newIndex > event.oldIndex) {
          newIndex = event.newIndex - 1;
        }

        var item = favourites.removeAt(event.oldIndex);
        favourites.insert(newIndex, item);

        emit(ItemFavouritesLoaded(
          favourites: ItemFavourites(
            favourites: favourites,
          ),
        ));
      }

      if (event is ItemFavouritesSaved) {
        if (currentState is ItemFavouritesInitial) {
          emit(ItemFavouritesLoading());

          emit(ItemFavouritesLoaded(
            favourites: ItemFavourites(
              favourites: [event.item],
            ),
          ));
        }

        if (currentState is ItemFavouritesLoaded) {
          emit(ItemFavouritesLoading());

          currentState.favourites.add(event.item);

          emit(currentState.copyWith(
            favourites: currentState.favourites,
          ));
        }
      }

      if (event is ItemFavouritesRemoved) {
        if (currentState is ItemFavouritesLoaded) {
          emit(ItemFavouritesLoading());

          emit(currentState.copyWith(
            favourites: ItemFavourites(
              favourites: currentState.favourites.without(event.item),
            ),
          ));
        }
      }
    } catch (_) {
      // Explicitly yield existing state
      emit(state);
    }
  }

  @override
  ItemFavouritesState fromJson(Map<String, dynamic> json) {
    try {
      // ignore: unnecessary_null_comparison
      if (json != null) {
        return ItemFavouritesLoaded(
          favourites: ItemFavourites.fromJson(json),
        );
      }

      return ItemFavouritesInitial();
    } catch (_) {
      return ItemFavouritesInitial();
    }
  }

  @override
  Map<String, dynamic> toJson(ItemFavouritesState state) {
    if (state is ItemFavouritesLoaded) {
      return state.favourites.toJson();
    }

    return {};
  }
}
