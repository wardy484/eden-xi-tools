import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';

class ItemShowHeader extends StatelessWidget {
  final SearchResultItem item;

  const ItemShowHeader({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ItemIcon(id: item.id),
        SizedBox(width: 15),
        Text(
          item.name,
          maxLines: 10,
          softWrap: true,
        ),
      ],
    );
  }
}
