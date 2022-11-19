import 'package:flutter/material.dart';

class PlayerSearchError extends StatelessWidget {
  const PlayerSearchError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Failed to fetch player results, please try again later.",
      ),
    );
  }
}
