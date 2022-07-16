import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerSearchProvider =
    StateNotifierProvider.autoDispose<PlayerSearchNotifier, PlayerSearchState>(
        (ref) {
  return PlayerSearchNotifier(
    eden: ref.read(edenProvider),
  );
});

class PlayerSearchNotifier extends StateNotifier<PlayerSearchState> {
  final EdenXiApi eden;
  final limit = 30;

  PlayerSearchNotifier({
    required this.eden,
  }) : super(PlayerSearchState.initial(playerName: ""));

  void clear() {
    state = PlayerSearchState.initial(playerName: "");
  }

  Future<void> search(
    String playerName, {
    bool append = false,
  }) async {
    state.whenOrNull(
      initial: (playerName) {
        state = PlayerSearchState.loading(
          playerName: playerName,
        );
      },
    );

    final startIndex = state.maybeWhen(
      loaded: (playerName, searchResult, hasReachedMax) =>
          searchResult.items.length,
      orElse: () => 0,
    );

    PlayerSearchResult results = await eden.players.search(
      playerName,
      startIndex,
      limit,
    );

    state.whenOrNull(
      loaded: (playerName, oldResults, hasReachedMax) {
        if (oldResults.total > 0 && append) {
          results = PlayerSearchResult(
            total: results.total + oldResults.total,
            items: [
              ...oldResults.items,
              ...results.items,
            ],
          );
        }
      },
    );

    state = PlayerSearchState.loaded(
      playerName: playerName,
      results: results,
      hasReachedMax: results.items.length >= results.total,
    );
  }
}
