import 'package:eden_xi_tools/widgets/flags/base_flag.dart';
import 'package:flutter/material.dart';

class SandoriaFlag extends StatelessWidget {
  final double height;
  final double width;

  const SandoriaFlag({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFlag(
      name: "Sandoria",
      url: "2/2f/Ffxi_flg_03l.jpg",
      width: width,
      height: height,
    );
  }
}
