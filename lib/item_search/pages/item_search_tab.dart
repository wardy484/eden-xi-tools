import 'package:eden_xi_tools/item_search/item_search_notifier.dart';
import 'package:eden_xi_tools/item_search/item_search_state.dart';
import 'package:eden_xi_tools/item_search/widgets/item_search_error.dart';
import 'package:eden_xi_tools/item_search/widgets/item_search_field.dart';
import 'package:eden_xi_tools/item_search/widgets/item_search_no_results.dart';
import 'package:eden_xi_tools/item_search/widgets/item_search_empty.dart';
import 'package:eden_xi_tools/item_show/widgets/item_search_result_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ItemSearchTab extends ConsumerStatefulWidget {
  @override
  _ItemSearchTabState createState() => _ItemSearchTabState();
}

class _ItemSearchTabState extends ConsumerState<ItemSearchTab> {
  final PagingController<int, SearchResultItem> _pagingController =
      PagingController(firstPageKey: 0);

  int pageKey = 0;
  bool noMoreResults = false;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      if (ref.read(itemSearchProvider).itemName == "") {
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
          .read(itemSearchProvider.notifier)
          .search(ref.read(itemSearchProvider).itemName, page: pageKey);
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(itemSearchProvider, (previous, ItemSearchState next) {
      next.whenOrNull(
        initial: (itemName) {
          _pagingController.refresh();
        },
        loaded: (itemName, searchResult, page, isLastPage) {
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
        ItemSearchField(),
        Expanded(
          child: PagedListView.separated(
            pagingController: _pagingController,
            separatorBuilder: (context, index) => Divider(height: 1),
            builderDelegate: PagedChildBuilderDelegate<SearchResultItem>(
                itemBuilder: (_, item, __) => ItemSearchCard(item: item),
                firstPageErrorIndicatorBuilder: (_) => ItemSearchError(),
                newPageErrorIndicatorBuilder: (_) => ItemSearchError(),
                noItemsFoundIndicatorBuilder: (context) {
                  if (ref.read(itemSearchProvider).itemName == "") {
                    return ItemSearchNoResults();
                  }

                  return ItemSearchEmpty();
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
