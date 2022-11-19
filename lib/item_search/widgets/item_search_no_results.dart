import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';

class ItemSearchNoResults extends StatelessWidget {
  const ItemSearchNoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredMessage(
      "No items found.",
    );
  }
}
