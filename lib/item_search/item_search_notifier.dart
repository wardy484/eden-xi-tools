import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_search/item_search_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemSearchProvider =
    StateNotifierProvider.autoDispose<ItemSearchNotifier, ItemSearchState>(
        (ref) {
  return ItemSearchNotifier(
    eden: ref.read(edenProvider),
  );
});

class ItemSearchNotifier extends StateNotifier<ItemSearchState> {
  final EdenXiApi eden;
  final limit = 30;

  ItemSearchNotifier({
    required this.eden,
  }) : super(ItemSearchState.initial(itemName: ""));

  clear() {
    state = ItemSearchState.initial(itemName: "");
  }

  Future<void> getItem(
    String itemName, {
    bool append = false,
  }) async {
    state.whenOrNull(
      initial: (itemName) {
        state = ItemSearchState.loading(
          itemName: itemName,
        );
      },
    );

    final startIndex = state.maybeWhen(
      loaded: (itemName, searchResult, hasReachedMax) =>
          searchResult.items.length,
      orElse: () => 0,
    );

    SearchResult results = await eden.items.search(
      itemName,
      startIndex,
      limit,
    );

    state.whenOrNull(
      loaded: (itemName, oldResults, hasReachedMax) {
        if (oldResults.total > 0 && append) {
          results = SearchResult(
            total: results.total + oldResults.total,
            items: [
              ...oldResults.items,
              ...results.items,
            ],
          );
        }
      },
    );

    state = ItemSearchState.loaded(
      itemName: itemName,
      searchResult: results,
      hasReachedMax: results.total <= limit,
    );
  }
}
