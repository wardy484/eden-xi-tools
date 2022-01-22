import 'package:eden_xi_tools/widgets/flags/base_flag.dart';
import 'package:flutter/material.dart';

class BastokFlag extends StatelessWidget {
  final double height;
  final double width;

  const BastokFlag({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFlag(
      name: "Bastok",
      url: "0/07/Ffxi_flg_01l.jpg",
      width: width,
      height: height,
    );
  }
}
