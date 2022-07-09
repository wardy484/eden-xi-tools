import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/transformers.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemSearchProvider = Provider.autoDispose<ItemSearchBloc>(
  (ref) => ItemSearchBloc(eden: ref.read(edenProvider)),
);

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {
  final EdenXiApi eden;
  final limit = 30;

  ItemSearchBloc({required this.eden}) : super(ItemSearchEmpty()) {
    on<ItemSearchEvent>(
      _onEvent,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  void _onEvent(
    ItemSearchEvent event,
    Emitter<ItemSearchState> emit,
  ) async {
    final currentState = state;
    String itemName = currentState.itemName;

    if (event is ItemSearchCleared) {
      emit(ItemSearchEmpty());
    }

    if (event is ItemSearchRequested) {
      emit(ItemSearchInitial(itemName: event.itemName));

      add(ItemSearchFetched());
    }

    if (event is ItemSearchFetched && !_hasReachedMax(currentState)) {
      try {
        if (currentState is ItemSearchInitial) {
          final results = await eden.items.search(itemName, 0, limit);

          emit(
            ItemSearchSuccess(
              results: results,
              hasReachedMax: results.total <= limit,
              itemName: itemName,
            ),
          );

          return;
        }

        if (currentState is ItemSearchSuccess) {
          final results = await eden.items.search(
            itemName,
            currentState.results.items.length,
            limit,
          );

          emit(
            currentState.results.items.length == results.total
                ? currentState.copyWith(
                    hasReachedMax: true,
                    itemName: itemName,
                  )
                : ItemSearchSuccess(
                    results: SearchResult(
                      total: results.total,
                      items: currentState.results.items + results.items,
                    ),
                    hasReachedMax: results.total <= limit,
                    itemName: itemName,
                  ),
          );
        }
      } catch (_) {
        emit(ItemSearchFailure());
      }
    }
  }

  bool _hasReachedMax(ItemSearchState state) =>
      state is ItemSearchSuccess && state.hasReachedMax;
}
