import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/ownable_items.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
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

    if (event is ItemShowRefreshed && state is ItemShowSuccess) {
      yield ItemShowInitial();

      yield await _buildSuccess("fire_crystal", false);
    }

    if (event is ItemShowRequested) {
      yield ItemShowInitial();

      try {
        yield await _buildSuccess(event.key, event.stacked);
      } catch (_) {
        yield ItemShowFailure();
      }
    }
  }

  Future<ItemShowSuccess> _buildSuccess(String key, bool stacked) async {
    final item = await itemRepository.getItem(key);
    final bazaarItems = await itemRepository.getBazaarItems(key);
    List<Owner> owners = [];

    if (OwnableItems.contains(item.id)) {
      owners = await itemRepository.getOwners(item.id);
    }

    return ItemShowSuccess(
      key: key,
      item: item,
      bazaarItems: bazaarItems,
      showStacked: stacked,
      owners: owners,
    );
  }
}
