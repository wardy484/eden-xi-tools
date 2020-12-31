import 'package:flutter/material.dart';

class PlayerSearchLoadingView extends StatelessWidget {
  const PlayerSearchLoadingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
