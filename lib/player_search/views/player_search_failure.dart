import 'package:flutter/material.dart';

class PlayerSearchFailureView extends StatelessWidget {
  const PlayerSearchFailureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Failed to fetch player results, please try again later.",
      ),
    );
  }
}
