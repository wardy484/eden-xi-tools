import 'package:eden_xi_tools/widgets/swipable_pages/swipable_page_container.dart';
import 'package:flutter/material.dart';

class PlayerSearchEmptyView extends StatelessWidget {
  const PlayerSearchEmptyView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwipablePageContent(
      child: Text(
        "Begin searching for a player by typing in the search box above.",
      ),
    );
  }
}
