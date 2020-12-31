import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowFailureState extends StatelessWidget {
  final PlayerSearchResultItem item;

  const PlayerShowFailureState({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemShowScaffold(
      header: Text(item.charname),
      body: Center(
        child: Text("Failed to fetch player, please try again later."),
      ),
    );
  }
}
