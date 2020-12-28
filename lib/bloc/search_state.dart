import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:getmyshittogether/eden/search/entities/search_result.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchFailure extends SearchState {}

class SearchSuccess extends SearchState {
  final SearchResult results;
  final bool hasReachedMax;

  const SearchSuccess({this.results, this.hasReachedMax});

  SearchSuccess copyWith({
    SearchResult results,
    bool hasReachedMax,
  }) {
    return SearchSuccess(
      results: results ?? this.results,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [results, hasReachedMax];

  @override
  String toString() =>
      'PostSuccess { search results: ${results.total}, hasReachedMax: $hasReachedMax }';
}
