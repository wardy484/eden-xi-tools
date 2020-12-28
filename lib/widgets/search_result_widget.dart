import 'package:flutter/material.dart';
import 'package:getmyshittogether/eden/search/entities/search_result_item.dart';

class SearchResultWidget extends StatelessWidget {
  final SearchResultItem item;

  const SearchResultWidget({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String iconUrl =
        'https://static.ffxiah.com/images/icon/${item.id}.png';

    return ListTile(
      leading: Image.network(iconUrl),
      title: Text(item.name),
    );
  }
}
