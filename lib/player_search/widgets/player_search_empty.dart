import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';

class PlayerSearchEmptyView extends StatelessWidget {
  const PlayerSearchEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredMessage(
      "Begin searching for a player by typing in the search box above.",
    );
  }
}
