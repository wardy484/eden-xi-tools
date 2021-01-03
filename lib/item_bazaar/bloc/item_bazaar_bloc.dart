import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'item_bazaar_event.dart';
part 'item_bazaar_state.dart';

class ItemBazaarBloc extends Bloc<ItemBazaarEvent, ItemBazaarState> {
  final ItemRepository itemRepository;

  ItemBazaarBloc({@required this.itemRepository}) : super(ItemBazaarInitial());

  @override
  Stream<ItemBazaarState> mapEventToState(
    ItemBazaarEvent event,
  ) async* {
    try {
      if (event is ItemBazaarRequested) {
        yield* _mapItemBazaarRequested(event);
      }

      if (event is ItemBazaarRefreshed) {
        yield* _mapItemBazaarRefreshed(event);
      }

      if (event is ItemBazaarCleared) {
        yield ItemBazaarInitial();
      }
    } catch (_) {
      yield ItemBazaarFailure();
    }
  }

  Stream<ItemBazaarState> _mapItemBazaarRequested(
    ItemBazaarRequested event,
  ) async* {
    yield ItemBazaarLoading();

    var items = await itemRepository.getBazaarItems(event.itemKey);

    yield ItemBazaarSuccess(key: event.itemKey, bazaarItems: items);
  }

  Stream<ItemBazaarState> _mapItemBazaarRefreshed(
    ItemBazaarRefreshed event,
  ) async* {
    final currentState = state;

    yield ItemBazaarLoading();

    if (currentState is ItemBazaarSuccess) {
      var items = await itemRepository.getBazaarItems(currentState.key);

      yield currentState.copyWith(bazaarItems: items);
    }
  }
}
