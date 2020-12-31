import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowLoadingState extends StatelessWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowLoadingState({Key key, @required this.playerResult})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemShowScaffold(
      header: Text(playerResult.charname),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
