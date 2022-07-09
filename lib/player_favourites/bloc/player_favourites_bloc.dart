import 'package:eden_xi_tools/player_favourites/entities/player_favourites.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'player_favourites_event.dart';
part 'player_favourites_state.dart';

class PlayerFavouritesBloc
    extends HydratedBloc<PlayerFavouritesEvent, PlayerFavouritesState> {
  PlayerFavouritesBloc() : super(PlayerFavouritesInitial()) {
    on<PlayerFavouritesEvent>(_onEvent);
  }

  void _onEvent(
    PlayerFavouritesEvent event,
    Emitter<PlayerFavouritesState> emit,
  ) async {
    try {
      final currentState = state;

      if (event is PlayerFavouritesReordered &&
          currentState is PlayerFavouritesLoaded) {
        emit(
          PlayerFavouritesLoading(),
        );

        var newIndex = event.newIndex;
        var favourites = currentState.favourites.all();

        if (event.newIndex > event.oldIndex) {
          newIndex = event.newIndex - 1;
        }

        var item = favourites.removeAt(event.oldIndex);
        favourites.insert(newIndex, item);

        emit(
          PlayerFavouritesLoaded(
            favourites: PlayerFavourites(
              favourites: favourites,
            ),
          ),
        );
      }

      if (event is PlayerFavouritesSaved) {
        if (currentState is PlayerFavouritesInitial) {
          emit(PlayerFavouritesLoading());

          emit(
            PlayerFavouritesLoaded(
              favourites: PlayerFavourites(
                favourites: [event.player],
              ),
            ),
          );
        }

        if (currentState is PlayerFavouritesLoaded) {
          emit(PlayerFavouritesLoading());

          currentState.favourites.add(event.player);

          emit(
            currentState.copyWith(
              favourites: currentState.favourites,
            ),
          );
        }
      }

      if (event is PlayerFavouritesRemoved) {
        if (currentState is PlayerFavouritesLoaded) {
          emit(PlayerFavouritesLoading());

          emit(
            currentState.copyWith(
              favourites: PlayerFavourites(
                favourites: currentState.favourites.without(event.player),
              ),
            ),
          );
        }
      }
    } catch (_) {
      // Explicitly emit(existing state
      emit(state);
    }
  }

  @override
  PlayerFavouritesState fromJson(Map<String, dynamic> json) {
    try {
      // ignore: unnecessary_null_comparison
      if (json != null) {
        return PlayerFavouritesLoaded(
          favourites: PlayerFavourites.fromJson(json),
        );
      }

      return PlayerFavouritesInitial();
    } catch (_) {
      return PlayerFavouritesInitial();
    }
  }

  @override
  Map<String, dynamic> toJson(PlayerFavouritesState state) {
    if (state is PlayerFavouritesLoaded) {
      return state.favourites.toJson();
    }

    return {};
  }
}
