import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_search/player_search_events.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools/transformers.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerSearchProvider = Provider.autoDispose<PlayerSearchBloc>(
  (ref) => PlayerSearchBloc(eden: ref.read(edenProvider)),
);

class PlayerSearchBloc extends Bloc<PlayerSearchEvent, PlayerSearchState> {
  final EdenXiApi eden;
  final limit = 30;

  PlayerSearchBloc({
    required this.eden,
  }) : super(PlayerSearchEmpty()) {
    on<PlayerSearchEvent>(
      (event, emit) => _onEvent(event, emit),
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  void _onEvent(
    PlayerSearchEvent event,
    Emitter<PlayerSearchState> emit,
  ) async {
    final currentState = state;
    String playerName = currentState.playerName;

    if (event is PlayerSearchInital || event is PlayerSearchCleared) {
      emit(PlayerSearchEmpty());
    }

    if (event is PlayerSearchFetch) {
      emit(PlayerSearchInital(playerName: event.playerName));

      add(PlayerSearchRequest());
    }

    if (event is PlayerSearchRequest && !_hasReachedMax(currentState)) {
      try {
        if (currentState is PlayerSearchEmpty ||
            currentState is PlayerSearchInital) {
          final results = await eden.players.search(playerName, 0, limit);

          emit(
            PlayerSearchSuccess(
              results: results,
              hasReachedMax: results.total <= limit,
              playerName: playerName,
            ),
          );

          return;
        }

        if (currentState is PlayerSearchSuccess) {
          final results = await eden.players.search(
            playerName,
            currentState.results.items.length,
            limit,
          );

          emit(
            currentState.results.items.length == results.total
                ? currentState.copyWith(
                    hasReachedMax: true,
                    playerName: playerName,
                  )
                : PlayerSearchSuccess(
                    results: PlayerSearchResult(
                      total: results.total,
                      items: currentState.results.items + results.items,
                    ),
                    hasReachedMax: results.total <= limit,
                    playerName: playerName,
                  ),
          );
        }
      } catch (_) {
        emit(PlayerSearchFailure());
      }
    }
  }

  bool _hasReachedMax(PlayerSearchState state) =>
      state is PlayerSearchSuccess && state.hasReachedMax;
}
