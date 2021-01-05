import 'package:eden_xi_tools/eden/items/entities/auction_house_item/auction_house_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:eden_xi_tools/extensions/int.dart';

enum MoreOptions { buyer, seller }

class ItemAuctionHouseCard extends StatelessWidget {
  final AuctionHouseItem item;

  const ItemAuctionHouseCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: ItemIcon(id: 65535), // Gil
            title: Text(item.sale.toGil()),
            subtitle: Text(
              'Bought at ${formatDate(item.sellDate)}',
            ),
            trailing: PopupMenuButton<MoreOptions>(
              onSelected: (MoreOptions result) {
                _navigateToPlayer(item.sellerName);
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<MoreOptions>>[
                  PopupMenuItem<MoreOptions>(
                    value: MoreOptions.seller,
                    child: Text('Seller: ${item.sellerName}'),
                  ),
                  PopupMenuItem<MoreOptions>(
                    value: MoreOptions.buyer,
                    child: Text('Buyer: ${item.buyerName}'),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
    );
  }

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    DateFormat formatter = DateFormat.yMd().add_Hm();

    return formatter.format(date);
  }

  _navigateToPlayer(String playerName) {
    Fluttertoast.showToast(
      msg: "Navigating to players coming soon.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey[800],
    );
  }
}
