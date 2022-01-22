import 'package:equatable/equatable.dart';

abstract class PlayerSearchEvent extends Equatable {
  const PlayerSearchEvent();

  @override
  List<Object> get props => [];
}

class PlayerSearchCleared extends PlayerSearchEvent {}

class PlayerSearchRequest extends PlayerSearchEvent {}

class PlayerSearchFetch extends PlayerSearchEvent {
  final String playerName;

  const PlayerSearchFetch({required this.playerName});

  @override
  List<Object> get props => [playerName];
}
