import 'package:eden_xi_tools/player_search/player_search_notifier.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_empty.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_field.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_loading.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_sucess.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerSearchTab extends ConsumerStatefulWidget {
  @override
  _PlayerSearchTabState createState() => _PlayerSearchTabState();
}

class _PlayerSearchTabState extends ConsumerState<PlayerSearchTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerSearchField(),
        Expanded(
            child: ref.watch(playerSearchProvider).when(
                  initial: (playerName) => PlayerSearchEmptyView(),
                  loading: (playerName) => PlayerSearchLoadingView(),
                  loaded: (playerName, players, hasReachedMax) =>
                      PlayerSearchSuccessView(
                    playerName: playerName,
                    results: players,
                    hasReachedMax: hasReachedMax,
                  ),
                )),
      ],
    );
  }
}
