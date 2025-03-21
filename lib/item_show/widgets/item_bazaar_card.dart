import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/extensions/int.dart';
import 'package:eden_xi_tools/player_show/pages/player_show_page.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';

import 'package:eden_xi_tools/widgets/online_indicator.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemBazaarCard extends ConsumerWidget {
  final BazaarItem item;

  const ItemBazaarCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => _navigateToPlayer(item.charname, context, ref),
      child: Card(
        child: Padding(
          padding: BoxPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      OnlineIndicator(onlineFlag: item.onlineFlag),
                      SizedBox(width: 8),
                      Text(
                        item.charname,
                        style: SubHeading,
                      ),
                    ],
                  ),
                  Padding(
                    padding: BoxPaddingRight,
                    child: Text(item.bazaar.toGil()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToPlayer(
    String playerName,
    BuildContext context,
    WidgetRef ref,
  ) async {
    var players = await ref.read(edenProvider).players.search(playerName, 0, 1);

    if (players.total > 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PlayerShowPage(
            playerResult: players.items.first,
          ),
        ),
      );
    } else {
      Fluttertoast.showToast(
        msg: "Player not found...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey[800],
      );
    }
  }
}
