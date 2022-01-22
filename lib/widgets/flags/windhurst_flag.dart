import 'package:eden_xi_tools/widgets/flags/base_flag.dart';
import 'package:flutter/material.dart';

class WindhurstFlag extends StatelessWidget {
  final double height;
  final double width;

  const WindhurstFlag({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFlag(
      name: "Windhurst",
      url: "b/bf/Ffxi_flg_04l.jpg",
      width: width,
      height: height,
    );
  }
}
