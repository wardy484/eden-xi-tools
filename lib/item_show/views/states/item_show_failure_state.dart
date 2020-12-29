import 'package:flutter/material.dart';
import 'package:getmyshittogether/eden/search/entities/search_result_item.dart';
import 'package:getmyshittogether/item_show/views/item_show_scaffold.dart';

class ItemShowFailureState extends StatelessWidget {
  final SearchResultItem item;

  const ItemShowFailureState({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemShowScaffold(
      header: Text(item.name),
      body: Center(
        child: Text("Failed to fetch item, please try again later."),
      ),
    );
  }
}
