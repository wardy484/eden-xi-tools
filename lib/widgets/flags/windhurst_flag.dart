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
      child: Image.network(
        'https://vignette.wikia.nocookie.net/ffxi/images/b/bf/Ffxi_flg_04l.jpg',
        width: width,
        height: height,
      ),
    );
  }
}
