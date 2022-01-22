import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/ownable_items.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/item_show/item_show_events.dart';
import 'package:eden_xi_tools/item_show/item_show_state.dart';

class ItemShowBloc extends Bloc<ItemShowEvent, ItemShowState> {
  final ItemRepository itemRepository;
  final limit = 30;

  ItemShowBloc({required this.itemRepository}) : super(ItemShowInitial()) {
    on<ItemShowEvent>(_onEvent);
  }

  void _onEvent(
    ItemShowEvent event,
    Emitter<ItemShowState> emit,
  ) async {
    if (event is ItemShowClear) {
      emit(ItemShowInitial());
    }

    if (event is ItemShowRefreshed && state is ItemShowSuccess) {
      emit(ItemShowInitial());

      emit(await _buildSuccess("fire_crystal", false));
    }

    if (event is ItemShowRequested) {
      emit(ItemShowInitial());

      try {
        emit(await _buildSuccess(event.key, event.stacked));
      } catch (_) {
        emit(ItemShowFailure());
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
