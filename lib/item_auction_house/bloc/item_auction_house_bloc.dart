import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item/auction_house_item.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'item_auction_house_event.dart';
part 'item_auction_house_state.dart';

class ItemAuctionHouseBloc
    extends Bloc<ItemAuctionHouseEvent, ItemAuctionHouseState> {
  final ItemRepository itemRepository;

  ItemAuctionHouseBloc({@required this.itemRepository})
      : super(ItemAuctionHouseInitial());

  @override
  Stream<ItemAuctionHouseState> mapEventToState(
      ItemAuctionHouseEvent event) async* {
    try {
      if (event is ItemAuctionHouseRequested) {
        yield* _mapItemAuctionHouseRequested(event);
      }

      if (event is ItemAuctionHouseRefreshed) {
        yield* _mapItemAuctionHouseRefreshed(event);
      }

      if (event is ItemAuctionHouseStackToggled) {
        yield* _mapItemAuctionHouseStackToggled(event);
      }

      if (event is ItemAuctionHouseCleared) {
        yield ItemAuctionHouseInitial();
      }
    } catch (_) {
      yield ItemAuctionHouseFailure();
    }
  }

  Stream<ItemAuctionHouseState> _mapItemAuctionHouseRequested(
    ItemAuctionHouseRequested event,
  ) async* {
    yield ItemAuctionHouseLoading(event.stacked);

    var items = await itemRepository.getAuctionHouseItem(
      event.itemKey,
      event.stacked,
    );

    yield ItemAuctionHouseSuccess(
      key: event.itemKey,
      stacked: event.stacked,
      auctionHouseItems: items,
    );
  }

  Stream<ItemAuctionHouseState> _mapItemAuctionHouseRefreshed(
    ItemAuctionHouseRefreshed event,
  ) async* {
    final currentState = state;

    yield ItemAuctionHouseLoading(state.stacked);

    if (currentState is ItemAuctionHouseSuccess) {
      yield ItemAuctionHouseLoading(currentState.stacked);

      var items = await itemRepository.getAuctionHouseItem(
        currentState.key,
        currentState.stacked,
      );

      yield currentState.copyWith(auctionHouseItems: items);
    }
  }

  Stream<ItemAuctionHouseState> _mapItemAuctionHouseStackToggled(
    ItemAuctionHouseStackToggled event,
  ) async* {
    final currentState = state;

    yield ItemAuctionHouseLoading(state.stacked);

    if (currentState is ItemAuctionHouseSuccess) {
      yield ItemAuctionHouseLoading(event.stacked);

      var items = await itemRepository.getAuctionHouseItem(
        currentState.key,
        event.stacked,
      );

      yield currentState.copyWith(
        auctionHouseItems: items,
        stacked: event.stacked,
      );
    }
  }
}
