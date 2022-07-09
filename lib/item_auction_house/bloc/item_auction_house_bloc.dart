import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'item_auction_house_event.dart';
part 'item_auction_house_state.dart';

final itemAuctionHouseProvider = Provider.autoDispose<ItemAuctionHouseBloc>(
  (ref) => ItemAuctionHouseBloc(eden: ref.read(edenProvider)),
);

class ItemAuctionHouseBloc
    extends Bloc<ItemAuctionHouseEvent, ItemAuctionHouseState> {
  final EdenXiApi eden;

  ItemAuctionHouseBloc({required this.eden})
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
        emit(await _mapItemAuctionHouseStackToggled(event, emit));
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
    var items = await eden.items.getAuctionHouseItem(
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
      var items = await eden.items.getAuctionHouseItem(
        currentState.key,
        currentState.stacked,
      );

      return currentState.copyWith(auctionHouseItems: items);
    }

    return ItemAuctionHouseLoading(state.stacked);
  }

  Future<ItemAuctionHouseState> _mapItemAuctionHouseStackToggled(
    ItemAuctionHouseStackToggled event,
    emit,
  ) async {
    final currentState = state;

    emit(ItemAuctionHouseLoading(state.stacked));

    if (currentState is ItemAuctionHouseSuccess) {
      var items = await eden.items.getAuctionHouseItem(
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
