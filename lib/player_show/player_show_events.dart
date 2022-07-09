import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
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
