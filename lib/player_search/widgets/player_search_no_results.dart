import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';

class PlayerSearchNoResults extends StatelessWidget {
  const PlayerSearchNoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredMessage(
      "No players found.",
    );
  }
}
