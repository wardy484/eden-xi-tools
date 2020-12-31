import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/player_search/player_search_events.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class PlayerSearchBloc extends Bloc<PlayerSearchEvent, PlayerSearchState> {
  final PlayerRepository playerRepository;
  final limit = 30;

  PlayerSearchBloc({@required this.playerRepository})
      : super(PlayerSearchEmpty());

  @override
  Stream<Transition<PlayerSearchEvent, PlayerSearchState>> transformEvents(
    Stream<PlayerSearchEvent> events,
    TransitionFunction<PlayerSearchEvent, PlayerSearchState> transitionFn,
  ) {
    return super.transformEvents(
        events.debounceTime(const Duration(milliseconds: 500)), transitionFn);
  }

  @override
  Stream<PlayerSearchState> mapEventToState(PlayerSearchEvent event) async* {
    final currentState = state;
    String playerName = currentState.playerName;

    if (event is PlayerSearchInital || event is PlayerSearchCleared) {
      yield PlayerSearchEmpty();
    }

    if (event is PlayerSearchFetch) {
      yield PlayerSearchInital(playerName: event.playerName);

      add(PlayerSearchRequest());
    }

    if (event is PlayerSearchRequest && !_hasReachedMax(currentState)) {
      try {
        if (currentState is PlayerSearchEmpty ||
            currentState is PlayerSearchInital) {
          final results = await playerRepository.search(playerName, 0, limit);

          yield PlayerSearchSuccess(
            results: results,
            hasReachedMax: results.total <= limit,
            playerName: playerName,
          );

          return;
        }

        if (currentState is PlayerSearchSuccess) {
          final results = await playerRepository.search(
            playerName,
            currentState.results.items.length,
            limit,
          );

          yield currentState.results.items.length == results.total
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
                );
        }
      } catch (_) {
        yield PlayerSearchFailure();
      }
    }
  }

  bool _hasReachedMax(PlayerSearchState state) =>
      state is PlayerSearchSuccess && state.hasReachedMax;
}
