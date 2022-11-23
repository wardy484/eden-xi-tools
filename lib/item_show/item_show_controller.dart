import 'package:async/async.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_show_controller.g.dart';

@riverpod
class ItemShowController extends _$ItemShowController {
  @override
  FutureOr<ItemDetails> build(
    int itemKey, {
    bool stacked = false,
  }) async {
    final eden = ref.read(edenProvider);
    final futures = FutureGroup();

    final itemKeyString = itemKey.toString();

    futures.add(eden.items.getItem(itemKeyString));
    futures.add(eden.items.getBazaarItems(itemKeyString));
    futures.add(eden.items.getAuctionHouseItem(itemKeyString, stacked));
    futures.add(eden.items.getCrafts(itemKeyString));
    futures.close();

    final results = await futures.future;

    List<Owner> owners = [];

    final Item item = results[0] as Item;

    if (OwnableItems.contains(item.id)) {
      owners = await eden.items.getOwners(item.id);
    }

    return ItemDetails(
      details: results[0],
      bazaarItems: results[1],
      owners: owners,
      auctionHouseItems: results[2],
      crafts: results[3],
      stacked: stacked,
    );
  }
}

final itemStackedProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

class ItemDetails {
  final Item details;
  final List<BazaarItem> bazaarItems;
  final List<Owner> owners;
  final List<AuctionHouseItem> auctionHouseItems;
  final List<Craft> crafts;
  final bool stacked;

  ItemDetails({
    required this.details,
    required this.bazaarItems,
    required this.owners,
    required this.auctionHouseItems,
    required this.crafts,
    required this.stacked,
  });
}
