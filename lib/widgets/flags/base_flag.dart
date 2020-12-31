import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BaseFlag extends StatelessWidget {
  final String name;
  final String url;
  final double height;
  final double width;

  const BaseFlag({
    Key key,
    this.name,
    this.url,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: CachedNetworkImage(
        placeholder: (context, url) => Text(""),
        imageUrl: buildUrl(),
        width: width,
        height: height,
      ),
    );
  }

  String buildUrl() => 'https://vignette.wikia.nocookie.net/ffxi/images/$url';
}
