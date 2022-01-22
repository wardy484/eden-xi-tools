import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item/auction_house_item.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:equatable/equatable.dart';

part 'item_auction_house_event.dart';
part 'item_auction_house_state.dart';

class ItemAuctionHouseBloc
    extends Bloc<ItemAuctionHouseEvent, ItemAuctionHouseState> {
  final ItemRepository itemRepository;

  ItemAuctionHouseBloc({required this.itemRepository})
      : super(ItemAuctionHouseInitial()) {
    on<ItemAuctionHouseEvent>(_onEvent);
  }

  void _onEvent(
    ItemAuctionHouseEvent event,
    Emitter<ItemAuctionHouseState> emit,
  ) async {
    try {
      if (event is ItemAuctionHouseRequested) {
        emit(ItemAuctionHouseLoading(event.stacked));
        emit(await _mapItemAuctionHouseRequested(event));
      }

      if (event is ItemAuctionHouseRefreshed) {
        emit(ItemAuctionHouseLoading(false));
        emit(await _mapItemAuctionHouseRefreshed(event));
      }

      if (event is ItemAuctionHouseStackToggled) {
        // TODO: Create some form of loading transition
        // without the below code the app just hangs
        // with it nothing happens because the logic is wank
        // potentially migrate to the new bloc syntax properly
        // or use freezed
        // do before release on any platform
        // emit(ItemAuctionHouseLoading(event.stacked));
        emit(await _mapItemAuctionHouseStackToggled(event));
      }

      if (event is ItemAuctionHouseCleared) {
        emit(ItemAuctionHouseLoading(false));
        emit(ItemAuctionHouseInitial());
      }
    } catch (_) {
      emit(ItemAuctionHouseFailure());
    }
  }

  Future<ItemAuctionHouseState> _mapItemAuctionHouseRequested(
    ItemAuctionHouseRequested event,
  ) async {
    var items = await itemRepository.getAuctionHouseItem(
      event.itemKey,
      event.stacked,
    );

    return ItemAuctionHouseSuccess(
      key: event.itemKey,
      stacked: event.stacked,
      auctionHouseItems: items,
    );
  }

  Future<ItemAuctionHouseState> _mapItemAuctionHouseRefreshed(
    ItemAuctionHouseRefreshed event,
  ) async {
    final currentState = state;

    if (currentState is ItemAuctionHouseSuccess) {
      var items = await itemRepository.getAuctionHouseItem(
        currentState.key,
        currentState.stacked,
      );

      return currentState.copyWith(auctionHouseItems: items);
    }

    return ItemAuctionHouseLoading(state.stacked);
  }

  Future<ItemAuctionHouseState> _mapItemAuctionHouseStackToggled(
    ItemAuctionHouseStackToggled event,
  ) async {
    final currentState = state;

    if (currentState is ItemAuctionHouseSuccess) {
      var items = await itemRepository.getAuctionHouseItem(
        currentState.key,
        event.stacked,
      );

      return currentState.copyWith(
        auctionHouseItems: items,
        stacked: event.stacked,
      );
    }

    return ItemAuctionHouseLoading(state.stacked);
  }
}
