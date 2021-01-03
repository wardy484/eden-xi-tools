import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/player_show/pages/player_show_page.dart';
import 'package:eden_xi_tools/widgets/player_avatar.dart';
import 'package:flutter/material.dart';

class PlayerSearchResultCard extends StatelessWidget {
  final PlayerSearchResultItem item;

  const PlayerSearchResultCard({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PlayerAvatar(id: item.avatar),
      title: Text(item.charname),
      subtitle: Text(item.title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerShowPage(
              playerResult: item,
            ),
          ),
        );
      },
    );
  }
}
