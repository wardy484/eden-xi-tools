import 'package:bloc/bloc.dart';
import 'package:getmyshittogether/eden/items/repositories/ItemRepository.dart';
import 'package:getmyshittogether/item_show/item_show_events.dart';
import 'package:getmyshittogether/item_show/item_show_state.dart';
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

        yield ItemShowSuccess(
          key: event.key,
          item: item,
          auctionHouseItems: auctionHouseItems,
          showStacked: event.stacked,
        );

        return;
      } catch (_) {
        yield ItemShowFailure();
      }
    }
  }
}
