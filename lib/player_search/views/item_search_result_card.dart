import 'package:flutter/material.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:eden_xi_tools/item_show/pages/item_show_page.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';

class ItemSearchCard extends StatelessWidget {
  final SearchResultItem item;

  const ItemSearchCard({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ItemIcon(id: item.id),
      title: Text(item.name),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemShowPage(
              item: item,
            ),
          ),
        );
      },
    );
  }
}
