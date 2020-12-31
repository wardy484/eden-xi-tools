import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PlayerSearchEvent extends Equatable {
  const PlayerSearchEvent();

  @override
  List<Object> get props => [];
}

class PlayerSearchClear extends PlayerSearchEvent {}

class PlayerSearchRequest extends PlayerSearchEvent {}

class PlayerSearchFetch extends PlayerSearchEvent {
  final String playerName;

  const PlayerSearchFetch({@required this.playerName})
      : assert(playerName != null);

  @override
  List<Object> get props => [playerName];
}
