import 'package:eden_xi_tools/item_show/views/item_search_result_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/widgets/bottom_loader.dart';

class SearchSuccess extends StatefulWidget {
  final ItemSearchSuccess state;
  final Function fetchMoreResults;

  const SearchSuccess({
    Key? key,
    required this.state,
    required this.fetchMoreResults,
  }) : super(key: key);

  @override
  _SearchSuccessState createState() => _SearchSuccessState();
}

class _SearchSuccessState extends State<SearchSuccess> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    SearchResult results = widget.state.results;
    bool hasReachedMax = widget.state.hasReachedMax;

    if (results.total < 1) {
      return Center(
        child: Text("No results for your search"),
      );
    }

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(height: 1),
      itemBuilder: (BuildContext context, int index) {
        return index >= results.items.length
            ? BottomLoader()
            : ItemSearchCard(item: results.items[index]);
      },
      itemCount: itemCount(results, hasReachedMax),
      controller: _scrollController,
    );
  }

  int itemCount(SearchResult results, bool hasReachedMax) {
    return hasReachedMax ? results.items.length : results.items.length + 1;
  }

  @override
  void dispose() {
    // somethin
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
