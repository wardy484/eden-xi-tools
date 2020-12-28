import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:getmyshittogether/bloc/bloc.dart';
import 'package:getmyshittogether/eden/search/entities/search_result.dart';
import 'package:getmyshittogether/eden/search/entities/search_result_item.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final http.Client httpClient;
  final limit = 30;

  SearchBloc({@required this.httpClient}) : super(SearchInitial());

  @override
  Stream<Transition<SearchEvent, SearchState>> transformEvents(
    Stream<SearchEvent> events,
    TransitionFunction<SearchEvent, SearchState> transitionFn,
  ) {
    return super.transformEvents(
        events.debounceTime(const Duration(milliseconds: 500)), transitionFn);
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    final currentState = state;
    String itemName = "";

    if (event is SearchRequested) {
      final results = await _fetchResults(event.itemName, 0, limit);

      yield SearchSuccess(
        results: results,
        hasReachedMax: results.total <= limit,
      );

      return;
    }

    if (event is SearchFetched && !_hasReachedMax(currentState)) {
      try {
        if (currentState is SearchInitial) {
          final results = await _fetchResults(itemName, 0, limit);

          yield SearchSuccess(results: results, hasReachedMax: false);

          return;
        }

        if (currentState is SearchSuccess) {
          final results = await _fetchResults(
              itemName, currentState.results.items.length, limit);

          yield currentState.results.items.length == results.total
              ? currentState.copyWith(hasReachedMax: true)
              : SearchSuccess(
                  results: SearchResult(
                    total: results.total,
                    items: currentState.results.items + results.items,
                  ),
                  hasReachedMax: false,
                );
        }
      } catch (_) {
        yield SearchFailure();
      }
    }
  }

  bool _hasReachedMax(SearchState state) =>
      state is SearchSuccess && state.hasReachedMax;

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
