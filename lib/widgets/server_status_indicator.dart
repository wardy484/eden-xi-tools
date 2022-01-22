import 'package:eden_xi_tools/eden/misc/entities/status/status.dart';
import 'package:flutter/material.dart';

class ServerStatusIndicator extends StatelessWidget {
  final Status status;

  const ServerStatusIndicator({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.power_settings_new,
      color: status.online ? Colors.green : Colors.red,
    );
  }
}
