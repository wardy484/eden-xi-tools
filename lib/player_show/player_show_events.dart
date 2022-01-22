import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:equatable/equatable.dart';

abstract class PlayerShowEvent extends Equatable {
  const PlayerShowEvent();

  @override
  List<Object> get props => [];
}

class PlayerShowClear extends PlayerShowEvent {}

class PlayerShowRequested extends PlayerShowEvent {
  final PlayerSearchResultItem playerResult;

  const PlayerShowRequested({required this.playerResult})
      // ignore: unnecessary_null_comparison
      : assert(playerResult != null);

  @override
  List<Object> get props => [playerResult];
}
