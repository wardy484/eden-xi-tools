import 'package:flutter/material.dart';
import 'package:getmyshittogether/eden/search/entities/search_result_item.dart';
import 'package:getmyshittogether/item_show/pages/item_show_page.dart';
import 'package:getmyshittogether/widgets/item_icon.dart';

class ItemSearchResultWidget extends StatelessWidget {
  final SearchResultItem item;

  const ItemSearchResultWidget({Key key, @required this.item})
      : super(key: key);

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
