import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'item_bazaar_event.dart';
part 'item_bazaar_state.dart';

final itemBazaarProvider = Provider.autoDispose<ItemBazaarBloc>(
  (ref) => ItemBazaarBloc(eden: ref.read(edenProvider)),
);

class ItemBazaarBloc extends Bloc<ItemBazaarEvent, ItemBazaarState> {
  final EdenXiApi eden;

  ItemBazaarBloc({required this.eden}) : super(ItemBazaarInitial()) {
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
    var items = await eden.items.getBazaarItems(event.itemKey);

    return ItemBazaarSuccess(key: event.itemKey, bazaarItems: items);
  }

  Future<ItemBazaarState> _mapItemBazaarRefreshed(
    ItemBazaarRefreshed event,
  ) async {
    final currentState = state;

    if (currentState is ItemBazaarSuccess) {
      var items = await eden.items.getBazaarItems(currentState.key);

      return currentState.copyWith(bazaarItems: items);
    }

    return ItemBazaarLoading();
  }
}
