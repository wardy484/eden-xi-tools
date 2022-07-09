import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';

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

  const PlayerSearchSuccess({
    required this.results,
    required this.hasReachedMax,
    this.playerName = "",
  });

  PlayerSearchSuccess copyWith({
    PlayerSearchResult? results,
    bool? hasReachedMax,
    String? playerName,
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
