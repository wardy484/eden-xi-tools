import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PlayerShowEvent extends Equatable {
  const PlayerShowEvent();

  @override
  List<Object> get props => [];
}

class PlayerShowClear extends PlayerShowEvent {}

class PlayerShowRequested extends PlayerShowEvent {
  final PlayerSearchResultItem playerResult;

  const PlayerShowRequested({@required this.playerResult})
      : assert(playerResult != null);

  @override
  List<Object> get props => [playerResult];
}
