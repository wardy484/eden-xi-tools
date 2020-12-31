import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class ItemSearchBloc extends Bloc<ItemSearchEvent, ItemSearchState> {
  final http.Client httpClient;
  final limit = 30;

  ItemSearchBloc({@required this.httpClient}) : super(ItemSearchInitial());

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

    if (event is InitiateItemSearch) {
      yield ItemSearchEmpty();
    }

    if (event is ItemSearchRequested) {
      yield ItemSearchInitial(itemName: event.itemName);

      add(ItemSearchFetched());
    }

    if (event is ItemSearchFetched && !_hasReachedMax(currentState)) {
      try {
        if (currentState is ItemSearchInitial) {
          final results = await _fetchResults(itemName, 0, limit);

          yield ItemSearchSuccess(
            results: results,
            hasReachedMax: results.total <= limit,
            itemName: itemName,
          );

          return;
        }

        if (currentState is ItemSearchSuccess) {
          final results = await _fetchResults(
              itemName, currentState.results.items.length, limit);

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

  Future<SearchResult> _fetchResults(
      String itemName, int startIndex, int limit) async {
    final encodedItemName = Uri.encodeFull(itemName);
    final response = await httpClient.get(
        'https://edenxi.com/api/v1/items?search=$encodedItemName&limit=$limit&offset=$startIndex');

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map;
      final items = data['items'] as List;

      return SearchResult(
        total: data['total'],
        items: items.map((item) {
          return SearchResultItem(
            id: item['id'],
            name: item['name'],
            sort: item['sort'],
            key: item['key'],
          );
        }).toList(),
      );
    } else {
      throw Exception("Erroring fetching search results from Eden server.");
    }
  }
}
