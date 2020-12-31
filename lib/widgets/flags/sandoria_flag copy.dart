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
      child: Image.network(
        'https://vignette.wikia.nocookie.net/ffxi/images/2/2f/Ffxi_flg_03l.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
