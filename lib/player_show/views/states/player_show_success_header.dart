import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/widgets/player_avatar.dart';
import 'package:flutter/material.dart';

class PlayerShowSuccessHeader extends StatelessWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowSuccessHeader({Key key, this.playerResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PlayerAvatar(
        id: playerResult.avatar,
        height: 40,
        width: 40,
      ),
      title: Text(
        playerResult.charname,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        playerResult.title,
        style: TextStyle(
          color: Colors.white,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
