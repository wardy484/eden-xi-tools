import 'package:eden_xi_tools/player_show/pages/player_show_page.dart';
import 'package:eden_xi_tools/widgets/player_avatar.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class PlayerSearchResultCard extends StatelessWidget {
  final PlayerSearchResultItem item;
  final Widget? icon;

  const PlayerSearchResultCard({
    Key? key,
    required this.item,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: PlayerAvatar(
        id: item.avatar,
        width: 45,
      ),
      title: Text(item.charname),
      subtitle: Text(item.jobString),
      trailing: icon == null ? Icon(Icons.arrow_forward_ios, size: 15) : icon,
      onTap: () => _navigate(context),
    );
  }

  void _navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlayerShowPage(
          playerResult: item,
        ),
      ),
    );
  }
}
