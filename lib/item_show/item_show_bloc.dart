import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/item_show/item_show_events.dart';
import 'package:eden_xi_tools/item_show/item_show_state.dart';
import 'package:meta/meta.dart';

class ItemShowBloc extends Bloc<ItemShowEvent, ItemShowState> {
  final ItemRepository itemRepository;
  final limit = 30;

  ItemShowBloc({@required this.itemRepository}) : super(ItemShowInitial());

  @override
  Stream<ItemShowState> mapEventToState(ItemShowEvent event) async* {
    if (event is ItemShowClear) {
      yield ItemShowInitial();
    }

    if (event is ItemShowRequested) {
      try {
        final item = await itemRepository.getItem(event.key);
        final auctionHouseItems =
            await itemRepository.getAuctionHouseItem(event.key, event.stacked);
        final bazaarItems = await itemRepository.getBazaarItems(event.key);

        yield ItemShowSuccess(
          key: event.key,
          item: item,
          auctionHouseItems: auctionHouseItems,
          bazaarItems: bazaarItems,
          showStacked: event.stacked,
        );

        return;
      } catch (_) {
        yield ItemShowFailure();
      }
    }
  }
}
