import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_header.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowLoadingState extends StatelessWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowLoadingState({Key key, @required this.playerResult})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemShowScaffold(
      header: PlayerShowHeader(playerResult: playerResult),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
