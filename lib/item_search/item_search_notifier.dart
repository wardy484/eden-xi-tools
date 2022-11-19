import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_search/item_search_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

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

  Future<void> search(
    String itemName, {
    int page = 0,
  }) async {
    state = ItemSearchState.loading(
      itemName: itemName,
    );

    try {
      print("fetch page: $page");
      SearchResult results = await eden.items.search(
        itemName,
        page,
        limit * (page + 1),
      );

      final isLastPage =
          results.total == 0 || results.total <= (page + 1) * limit;

      print("IsLastPage ${isLastPage}");

      state = ItemSearchState.loaded(
        itemName: itemName,
        searchResult: results,
        page: page,
        isLastPage: isLastPage,
      );
    } catch (error, stackTrace) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );

      state = ItemSearchState.error(
        itemName: itemName,
        message: "Failed to search for items, please try again later.",
      );
    }
  }
}
