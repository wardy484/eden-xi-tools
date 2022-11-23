import 'package:eden_xi_tools/player_favourites/views/player_favourite_button.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/player_avatar.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class PlayerShowAppbar extends StatelessWidget implements PreferredSizeWidget {
  final PlayerSearchResultItem playerResult;

  @override
  final Size preferredSize;

  PlayerShowAppbar({
    Key? key,
    required this.playerResult,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: ListTile(
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
          playerResult.jobString,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: LightText,
        ),
      ),
      actions: [
        PlayerFavouriteButton(player: playerResult),
      ],
    );
  }
}
