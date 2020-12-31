import 'dart:ui';

import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:flutter/material.dart';

class PlayerCraftingCard extends StatelessWidget {
  final PlayerCrafts crafts;

  const PlayerCraftingCard({Key key, this.crafts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Crafts",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
              children: [
                PlayerJobLabel(name: "Fishing", level: crafts.alchemy),
                PlayerJobLabel(name: "Woodworking", level: crafts.woodworking),
                PlayerJobLabel(name: "Smithing", level: crafts.smithing),
                PlayerJobLabel(
                  name: "Goldsmithing",
                  level: crafts.goldsmithing,
                ),
                PlayerJobLabel(name: "Clothcraft", level: crafts.clothcraft),
                PlayerJobLabel(
                  name: "Leathercraft",
                  level: crafts.leathercraft,
                ),
                PlayerJobLabel(name: "Bonecraft", level: crafts.bonecraft),
                PlayerJobLabel(name: "Alchemy", level: crafts.alchemy),
                PlayerJobLabel(name: "Cooking", level: crafts.cooking),
                PlayerJobLabel(name: "Synergy", level: crafts.synergy),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PlayerJobLabel extends StatelessWidget {
  final String name;
  final double level;

  const PlayerJobLabel({Key key, this.name, this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              // fontWeight: FontWeight.w600,
              fontFeatures: [
                FontFeature.tabularFigures(),
              ],
            ),
          ),
          Text(
            level.toString(),
            style: TextStyle(
              // fontWeight: FontWeight.w600,
              fontFeatures: [
                FontFeature.tabularFigures(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
