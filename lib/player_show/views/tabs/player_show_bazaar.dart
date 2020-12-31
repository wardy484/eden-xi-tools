import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

class PlayerShowBazaar extends StatelessWidget {
  final List<PlayerBazaarItem> items;

  const PlayerShowBazaar({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return Center(
        child: Text("No bazaar history..."),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        PlayerBazaarItem item = items[index];
        ReCase name = new ReCase(item.itemName);

        return Card(
          child: Padding(
            padding: EdgeInsets.all(8),
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
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text("100g"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
