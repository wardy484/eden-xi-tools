import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:equatable/equatable.dart';

part 'item_bazaar_event.dart';
part 'item_bazaar_state.dart';

class ItemBazaarBloc extends Bloc<ItemBazaarEvent, ItemBazaarState> {
  final ItemRepository itemRepository;

  ItemBazaarBloc({required this.itemRepository}) : super(ItemBazaarInitial()) {
    on<ItemBazaarEvent>(_onEvent);
  }

  void _onEvent(
    ItemBazaarEvent event,
    Emitter<ItemBazaarState> emit,
  ) async {
    try {
      if (event is ItemBazaarRequested) {
        emit(ItemBazaarLoading());

        emit(await _mapItemBazaarRequested(event));
      }

      if (event is ItemBazaarRefreshed) {
        emit(ItemBazaarLoading());

        emit(await _mapItemBazaarRefreshed(event));
      }

      if (event is ItemBazaarCleared) {
        emit(ItemBazaarLoading());

        emit(ItemBazaarInitial());
      }
    } catch (_) {
      emit(ItemBazaarFailure());
    }
  }

  Future<ItemBazaarState> _mapItemBazaarRequested(
    ItemBazaarRequested event,
  ) async {
    var items = await itemRepository.getBazaarItems(event.itemKey);

    return ItemBazaarSuccess(key: event.itemKey, bazaarItems: items);
  }

  Future<ItemBazaarState> _mapItemBazaarRefreshed(
    ItemBazaarRefreshed event,
  ) async {
    final currentState = state;

    if (currentState is ItemBazaarSuccess) {
      var items = await itemRepository.getBazaarItems(currentState.key);

      return currentState.copyWith(bazaarItems: items);
    }

    return ItemBazaarLoading();
  }
}
