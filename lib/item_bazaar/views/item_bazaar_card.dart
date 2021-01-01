import 'package:eden_xi_tools/extensions/int.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';

import 'package:eden_xi_tools/widgets/online_indicator.dart';
import 'package:flutter/material.dart';

class ItemBazaarCard extends StatelessWidget {
  final BazaarItem item;

  const ItemBazaarCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Text(item.bazaar.toGil()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
