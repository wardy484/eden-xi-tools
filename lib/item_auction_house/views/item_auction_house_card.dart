import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_show/pages/player_show_page.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:eden_xi_tools/extensions/int.dart';

enum MoreOptions { buyer, seller }

class ItemAuctionHouseCard extends ConsumerWidget {
  final AuctionHouseItem item;
  final String? title;

  const ItemAuctionHouseCard({
    Key? key,
    required this.item,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // Text('Bought by ${item.buyerName} from ${item.sellerName}'),

    return Card(
      child: Column(
        children: [
          if (title != null)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    title!,
                    style: SubHeading,
                  ),
                ),
              ],
            ),
          if (title != null) Divider(),
          ListTile(
            leading: ItemIcon(id: 65535), // Gil
            title: Text(item.sale.toGil()),
            subtitle: Text('Bought at ${formatDate(item.sellDate)}'),
            trailing: PopupMenuButton<MoreOptions>(
              onSelected: (MoreOptions result) {
                if (result.index == 0) {
                  _navigateToPlayer(item.sellerName, context, ref);
                } else {
                  _navigateToPlayer(item.buyerName, context, ref);
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<MoreOptions>>[
                  PopupMenuItem<MoreOptions>(
                    value: MoreOptions.seller,
                    // TODO: Fix enums being wrong way around
                    child: Text('Buyer: ${item.buyerName}'),
                  ),
                  PopupMenuItem<MoreOptions>(
                    value: MoreOptions.buyer,
                    child: Text('Seller: ${item.sellerName}'),
                  ),
                ];
              },
            ),
          ),
          Divider(),
          IntrinsicHeight(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        _navigateToPlayer(item.buyerName, context, ref),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Buyer: ${item.buyerName}"),
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        _navigateToPlayer(item.sellerName, context, ref),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Seller: ${item.sellerName}"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    DateFormat formatter = DateFormat.yMd().add_Hm();

    return formatter.format(date);
  }

  _navigateToPlayer(
      String playerName, BuildContext context, WidgetRef ref) async {
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
