import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BastokFlag extends StatelessWidget {
  final double height;
  final double width;

  const BastokFlag({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Bastok",
      child: CachedNetworkImage(
        placeholder: (context, url) => CircularProgressIndicator(),
        imageUrl:
            'https://vignette.wikia.nocookie.net/ffxi/images/0/07/Ffxi_flg_01l.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
