import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final String message;

  const CenteredMessage(
    this.message, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          message,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
