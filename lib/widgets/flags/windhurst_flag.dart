import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WindhurstFlag extends StatelessWidget {
  final double height;
  final double width;

  const WindhurstFlag({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Windhurst",
      child: CachedNetworkImage(
        placeholder: (context, url) => CircularProgressIndicator(),
        imageUrl:
            'https://vignette.wikia.nocookie.net/ffxi/images/b/bf/Ffxi_flg_04l.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
