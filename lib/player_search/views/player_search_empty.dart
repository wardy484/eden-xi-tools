import 'package:flutter/material.dart';

class PlayerSearchEmptyView extends StatelessWidget {
  const PlayerSearchEmptyView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Begin searching for a player by typing in the search box above.",
        ),
      ),
    );
  }
}
