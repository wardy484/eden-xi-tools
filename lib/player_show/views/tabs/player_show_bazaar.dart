import 'package:eden_xi_tools/eden/player/entities/player_bazaar_item/player_bazaar_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

class PlayerShowBazaar extends StatelessWidget {
  final List<PlayerBazaarItem> items;
  final Function onRefresh;

  const PlayerShowBazaar({
    Key key,
    @required this.items,
    @required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return Center(
        child: Text("No bazaar history..."),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          PlayerBazaarItem item = items[index];
          ReCase name = new ReCase(item.itemName);

          return Card(
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
                          Text(
                            name.titleCase,
                            style: SubHeading,
                          ),
                        ],
                      ),
                      Padding(
                        padding: BoxPaddingRight,
                        child: Text("100g"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
