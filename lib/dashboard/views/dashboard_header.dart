import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "icon.png",
          width: 35,
          height: 35,
        ),
        SizedBox(width: 14),
        Text("Eden XI Tools"),
      ],
    );
  }
}
