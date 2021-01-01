import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final String message;

  const CenteredMessage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
