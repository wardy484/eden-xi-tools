import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_show/item_show_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final itemShowProvider =
    StateNotifierProvider.autoDispose<ItemShowNotifier, ItemShowState>((ref) {
  return ItemShowNotifier(
    eden: ref.read(edenProvider),
  );
});

class ItemShowNotifier extends StateNotifier<ItemShowState> {
  final EdenXiApi eden;

  ItemShowNotifier({
    required this.eden,
  }) : super(ItemShowState.initial(false));

  Future<void> getItem(String key, bool stacked) async {
    state = ItemShowState.loading(false);

    try {
      final futures = [
        eden.items.getItem(key),
        eden.items.getBazaarItems(key),
        eden.items.getAuctionHouseItem(key, stacked),
        eden.items.getCrafts(key)
      ];

      List<Owner> owners = [];

      final result = await Future.wait(futures);
      final Item item = result[0] as Item;

      if (OwnableItems.contains(item.id)) {
        owners = await eden.items.getOwners(item.id);
      }

      state = ItemShowState.loaded(
        key: key,
        item: item,
        bazaarItems: result[1] as List<BazaarItem>,
        owners: owners,
        auctionItems: result[2] as List<AuctionHouseItem>,
        crafts: result[3] as List<Craft>,
        stacked: stacked,
      );
    } catch (error, stackTrace) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );

      state = ItemShowState.error(
        stacked,
        message: "Some went wrong fetching item info, please try again later.",
      );
    }
  }

  Future<void> toggleStacked() async {
    state.whenOrNull(
      loaded: (key, item, bazaarItems, owners, auctionItems, crafts, stacked) {
        getItem(key, !stacked);
      },
    );
  }
}
