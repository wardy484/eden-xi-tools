import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemIcon extends StatelessWidget {
  final int id;

  const ItemIcon({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => Text(""),
      imageUrl: 'https://static.ffxiah.com/images/icon/$id.png',
    );
  }
}
