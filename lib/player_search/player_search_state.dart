import 'package:eden_xi_tools/eden/player/entities/player_search_result/player_search_results.dart';
import 'package:equatable/equatable.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result.dart';

abstract class PlayerSearchState extends Equatable {
  final String playerName;

  const PlayerSearchState({this.playerName = ""});

  @override
  List<Object> get props => [playerName];
}

class PlayerSearchEmpty extends PlayerSearchState {}

class PlayerSearchInital extends PlayerSearchState {
  final String playerName;

  const PlayerSearchInital({this.playerName = ""});

  @override
  List<Object> get props => [playerName];
}

class PlayerSearchFailure extends PlayerSearchState {}

class PlayerSearchSuccess extends PlayerSearchState {
  final PlayerSearchResult results;
  final bool hasReachedMax;
  final String playerName;

  const PlayerSearchSuccess(
      {this.results, this.hasReachedMax, this.playerName = ""});

  PlayerSearchSuccess copyWith({
    SearchResult results,
    bool hasReachedMax,
    String playerName,
  }) {
    return PlayerSearchSuccess(
      results: results ?? this.results,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      playerName: playerName ?? this.playerName,
    );
  }

  @override
  List<Object> get props => [results, hasReachedMax, playerName];

  @override
  String toString() =>
      'PostSuccess { search results: ${results.total}, hasReachedMax: $hasReachedMax, itemName: $playerName }';
}
