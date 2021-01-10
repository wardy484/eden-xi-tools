import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/player_avatar.dart';
import 'package:flutter/material.dart';

class PlayerShowHeader extends StatelessWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowHeader({Key key, this.playerResult}) : super(key: key);

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
        style: LightHeading,
      ),
      subtitle: Text(
        playerResult.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: LightText,
      ),
    );
  }
}
