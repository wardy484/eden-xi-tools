import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/player_show/views/widgets/factory/PlayerFactory.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PlayerCraftingCard extends StatelessWidget {
  final PlayerCrafts crafts;

  const PlayerCraftingCard({Key key, this.crafts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Crafts",
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ResponsiveGridRow(
          children: [
            ...PlayerFactory.makeCraftsList(crafts).map(
              (widget) => ResponsiveGridCol(
                child: widget,
                xs: 6,
                sm: 4,
                md: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
