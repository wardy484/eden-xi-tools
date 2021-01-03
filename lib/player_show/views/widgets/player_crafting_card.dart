import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/player_show/views/widgets/factory/PlayerFactory.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PlayerCraftingCard extends StatelessWidget {
  final PlayerCrafts crafts;

  const PlayerCraftingCard({Key key, this.crafts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: BoxPadding,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text("Crafts", style: Heading),
              ],
            ),
            SizedBox(height: 8),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 2,
              children: PlayerFactory.makeCraftsList(crafts),
            )
          ],
        ),
      ),
    );
  }
}
