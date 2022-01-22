import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.gavel),
        SizedBox(width: 14),
        Text("Eden XI Tools"),
      ],
    );
  }
}
