import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result/player_search_results.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/player_search/player_search_events.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools/transformers.dart';

class PlayerSearchBloc extends Bloc<PlayerSearchEvent, PlayerSearchState> {
  final PlayerRepository playerRepository;
  final limit = 30;

  PlayerSearchBloc({required this.playerRepository})
      : super(PlayerSearchEmpty()) {
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
          final results = await playerRepository.search(playerName, 0, limit);

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
          final results = await playerRepository.search(
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
