import 'package:eden_xi_tools/player_search/player_search_notifier.dart';
import 'package:eden_xi_tools/player_search/player_search_state.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_empty.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_error.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_field.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_no_results.dart';
import 'package:eden_xi_tools/player_search/widgets/player_search_result_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PlayerSearchTab extends ConsumerStatefulWidget {
  @override
  _PlayerSearchTabState createState() => _PlayerSearchTabState();
}

class _PlayerSearchTabState extends ConsumerState<PlayerSearchTab> {
  final PagingController<int, PlayerSearchResultItem> _pagingController =
      PagingController(firstPageKey: 0);

  int pageKey = 0;
  bool noMoreResults = false;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      if (ref.read(playerSearchProvider).playerName == "") {
        _pagingController.appendLastPage([]);
        return;
      }

      _fetchPage(pageKey + 1);
    });

    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      ref
          .read(playerSearchProvider.notifier)
          .search(ref.read(playerSearchProvider).playerName, page: pageKey);
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(playerSearchProvider, (previous, PlayerSearchState next) {
      next.whenOrNull(
        initial: (playerName) {
          _pagingController.refresh();
        },
        loaded: (playerName, searchResult, page, isLastPage) {
          setState(() {
            pageKey = page;
          });

          if (page == 0) {
            _pagingController.itemList = searchResult.items;
            return;
          }

          if (isLastPage) {
            _pagingController.appendLastPage(searchResult.items);
          } else {
            _pagingController.appendPage(searchResult.items, pageKey);
          }
          _pagingController.refresh();
        },
      );
    });

    return Column(
      children: [
        PlayerSearchField(),
        Expanded(
          child: PagedListView.separated(
            pagingController: _pagingController,
            separatorBuilder: (context, index) => Divider(height: 1),
            builderDelegate: PagedChildBuilderDelegate<PlayerSearchResultItem>(
                itemBuilder: (_, item, __) =>
                    PlayerSearchResultCard(item: item),
                firstPageErrorIndicatorBuilder: (_) => PlayerSearchError(),
                newPageErrorIndicatorBuilder: (_) => PlayerSearchError(),
                noItemsFoundIndicatorBuilder: (context) {
                  if (ref.read(playerSearchProvider).playerName == "") {
                    return PlayerSearchEmpty();
                  }

                  return PlayerSearchNoResults();
                }),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
