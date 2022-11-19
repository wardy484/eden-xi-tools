import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

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
    int page = 0,
  }) async {
    PlayerSearchState.loading(
      playerName: playerName,
    );

    try {
      PlayerSearchResult results = await eden.players.search(
        playerName,
        page,
        limit,
      );

      final isLastPage =
          results.total == 0 || results.total <= (page + 1) * limit;

      state = PlayerSearchState.loaded(
        playerName: playerName,
        results: results,
        page: page,
        isLastPage: isLastPage,
      );
    } catch (error, stackTrace) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );

      state = PlayerSearchState.error(
        playerName: playerName,
        message: "Failed to search for players, please try again later.",
      );
    }
  }
}
