import 'package:eden_xi_tools/player_search/player_search_notifier.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_result_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/bottom_loader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerSearchSuccessView extends ConsumerStatefulWidget {
  final String playerName;
  final PlayerSearchResult results;
  final bool hasReachedMax;

  const PlayerSearchSuccessView({
    Key? key,
    required this.playerName,
    required this.results,
    required this.hasReachedMax,
  }) : super(key: key);

  @override
  _PlayerSearchSuccessView createState() => _PlayerSearchSuccessView();
}

class _PlayerSearchSuccessView extends ConsumerState<PlayerSearchSuccessView> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    PlayerSearchResult results = widget.results;
    bool hasReachedMax = widget.hasReachedMax;

    if (results.total < 1) {
      return Center(
        child: Text("No results for your search"),
      );
    }

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        return index >= results.items.length
            ? BottomLoader()
            : PlayerSearchResultCard(item: results.items[index]);
      },
      itemCount: itemCount(results, hasReachedMax),
      controller: _scrollController,
    );
  }

  int itemCount(PlayerSearchResult results, bool hasReachedMax) {
    return hasReachedMax ? results.items.length : results.items.length + 1;
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold) {
      ref
          .read(playerSearchProvider.notifier)
          .search(widget.playerName, append: true);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
