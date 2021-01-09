import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/item_show/views/item_search_result_card.dart';
import 'package:flutter/Material.dart';

class ItemFavouriteCard extends StatelessWidget {
  final SearchResultItem item;

  const ItemFavouriteCard({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ItemSearchCard(item: item),
        Divider(),
      ],
    );
  }
}
