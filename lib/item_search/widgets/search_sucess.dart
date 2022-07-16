import 'package:eden_xi_tools/item_search/item_search_notifier.dart';
import 'package:eden_xi_tools/item_show/widgets/item_search_result_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/bottom_loader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchSuccess extends ConsumerStatefulWidget {
  final String itemName;
  final SearchResult searchResult;
  final bool hasReachedMax;

  const SearchSuccess({
    Key? key,
    required this.itemName,
    required this.searchResult,
    required this.hasReachedMax,
  }) : super(key: key);

  @override
  _SearchSuccessState createState() => _SearchSuccessState();
}

class _SearchSuccessState extends ConsumerState<SearchSuccess> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    SearchResult results = widget.searchResult;
    bool hasReachedMax = widget.hasReachedMax;

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

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold) {
      ref.read(itemSearchProvider.notifier).search(widget.itemName);
    }
  }
}
