import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SandoriaFlag extends StatelessWidget {
  final double height;
  final double width;

  const SandoriaFlag({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Sandoria",
      child: CachedNetworkImage(
        placeholder: (context, url) => CircularProgressIndicator(),
        imageUrl:
            'https://vignette.wikia.nocookie.net/ffxi/images/2/2f/Ffxi_flg_03l.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
