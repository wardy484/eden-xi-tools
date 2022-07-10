import 'package:eden_xi_tools/item_search/item_search_notifier.dart';
import 'package:eden_xi_tools/item_search/widgets/item_search_field.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_search/widgets/search_empty.dart';
import 'package:eden_xi_tools/item_search/widgets/search_loading.dart';
import 'package:eden_xi_tools/item_search/widgets/search_sucess.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemSearchTab extends ConsumerStatefulWidget {
  @override
  _ItemSearchTabState createState() => _ItemSearchTabState();
}

class _ItemSearchTabState extends ConsumerState<ItemSearchTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemSearchField(),
        Expanded(
          child: ref.watch(itemSearchProvider).when(
                initial: (_) => SearchEmpty(),
                loading: (_) => SearchLoading(),
                loaded: (itemName, searchResult, hasReachedMax) =>
                    SearchSuccess(
                  itemName: itemName,
                  searchResult: searchResult,
                  hasReachedMax: hasReachedMax,
                ),
              ),
        ),
      ],
    );
  }
}
