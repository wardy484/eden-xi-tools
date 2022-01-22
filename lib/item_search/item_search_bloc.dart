import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result/search_result.dart';
import 'package:eden_xi_tools/transformers.dart';

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {
  final ItemRepository itemRepository;
  final limit = 30;

  ItemSearchBloc({required this.itemRepository}) : super(ItemSearchEmpty()) {
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
          final results = await itemRepository.search(itemName, 0, limit);

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
          final results = await itemRepository.search(
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
