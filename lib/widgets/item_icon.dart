import 'package:flutter/material.dart';

class ItemIcon extends StatelessWidget {
  final int id;

  const ItemIcon({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network('https://static.ffxiah.com/images/icon/$id.png');
  }
}
