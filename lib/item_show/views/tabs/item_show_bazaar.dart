import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item.dart';
import 'package:eden_xi_tools/widgets/online_indicator.dart';

class ItemShowBazaar extends StatelessWidget {
  final List<BazaarItem> items;

  const ItemShowBazaar({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return Center(
        child: Text("No auction house history..."),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        BazaarItem item = items[index];

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
