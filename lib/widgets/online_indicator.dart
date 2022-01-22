import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  final int onlineFlag;

  const OnlineIndicator({
    Key? key,
    required this.onlineFlag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Player is ${getStatusString()}",
      child: Icon(
        Icons.power,
        color: getIconColour(),
      ),
    );
  }

  String getStatusString() => onlineFlag == 1 ? "online" : "offline";

  Color getIconColour() {
    return onlineFlag == 1 ? Colors.green : Colors.red;
  }
}
