import 'package:eden_xi_tools/eden/player/entities/player_search_result/player_search_results.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/bottom_loader.dart';

class PlayerSearchSuccessView extends StatefulWidget {
  final PlayerSearchSuccess state;
  final Function fetchMoreResults;

  const PlayerSearchSuccessView({
    Key? key,
    required this.state,
    required this.fetchMoreResults,
  }) : super(key: key);

  @override
  _PlayerSearchSuccessView createState() => _PlayerSearchSuccessView();
}

class _PlayerSearchSuccessView extends State<PlayerSearchSuccessView> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    PlayerSearchResult results = widget.state.results;
    bool hasReachedMax = widget.state.hasReachedMax;

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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold) {
      widget.fetchMoreResults();
    }
  }
}
