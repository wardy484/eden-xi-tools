import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result/search_result.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {
  final ItemRepository itemRepository;
  final limit = 30;

  ItemSearchBloc({@required this.itemRepository}) : super(ItemSearchEmpty());

  @override
  Stream<Transition<ItemSearchEvent, ItemSearchState>> transformEvents(
    Stream<ItemSearchEvent> events,
    TransitionFunction<ItemSearchEvent, ItemSearchState> transitionFn,
  ) {
    return super.transformEvents(
        events.debounceTime(const Duration(milliseconds: 500)), transitionFn);
  }

  @override
  Stream<ItemSearchState> mapEventToState(ItemSearchEvent event) async* {
    final currentState = state;
    String itemName = currentState.itemName;

    if (event is ItemSearchCleared) {
      yield ItemSearchEmpty();
    }

    if (event is ItemSearchRequested) {
      yield ItemSearchInitial(itemName: event.itemName);

      add(ItemSearchFetched());
    }

    if (event is ItemSearchFetched && !_hasReachedMax(currentState)) {
      try {
        if (currentState is ItemSearchInitial) {
          final results = await itemRepository.search(itemName, 0, limit);

          yield ItemSearchSuccess(
            results: results,
            hasReachedMax: results.total <= limit,
            itemName: itemName,
          );

          return;
        }

        if (currentState is ItemSearchSuccess) {
          final results = await itemRepository.search(
            itemName,
            currentState.results.items.length,
            limit,
          );

          yield currentState.results.items.length == results.total
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
                );
        }
      } catch (_) {
        yield ItemSearchFailure();
      }
    }
  }

  bool _hasReachedMax(ItemSearchState state) =>
      state is ItemSearchSuccess && state.hasReachedMax;
}
