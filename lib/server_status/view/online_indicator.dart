import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  final bool online;

  const OnlineIndicator({
    Key? key,
    required this.online,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.power_settings_new,
      color: online ? Colors.green : Colors.red,
    );
  }
}
