import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_show/item_show_events.dart';
import 'package:eden_xi_tools/item_show/item_show_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemShowProvider = Provider.autoDispose<ItemShowBloc>(
  (ref) => ItemShowBloc(eden: ref.read(edenProvider)),
);

class ItemShowBloc extends Bloc<ItemShowEvent, ItemShowState> {
  final EdenXiApi eden;
  final limit = 30;

  ItemShowBloc({required this.eden}) : super(ItemShowInitial()) {
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
    final item = await eden.items.getItem(key);
    final bazaarItems = await eden.items.getBazaarItems(key);
    List<Owner> owners = [];

    if (OwnableItems.contains(item.id)) {
      owners = await eden.items.getOwners(item.id);
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
