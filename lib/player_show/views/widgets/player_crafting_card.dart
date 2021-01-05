import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/player_show/views/widgets/factory/PlayerFactory.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class PlayerCraftingCard extends StatelessWidget {
  final PlayerCrafts crafts;

  const PlayerCraftingCard({Key key, this.crafts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Crafts",
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 2,
          children: PlayerFactory.makeCraftsList(crafts),
        ),
      ),
    );
  }
}
