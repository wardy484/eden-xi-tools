import 'dart:ui';

import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:flutter/material.dart';

class PlayerJobsCard extends StatelessWidget {
  final PlayerJobs jobs;

  const PlayerJobsCard({Key key, this.jobs}) : super(key: key);

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
                  "Jobs",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 6,
              physics: NeverScrollableScrollPhysics(),
              children: [
                PlayerJobLabel(name: "WAR", level: jobs.war),
                PlayerJobLabel(name: "MNK", level: jobs.mnk),
                PlayerJobLabel(name: "WHM", level: jobs.whm),
                PlayerJobLabel(name: "BLM", level: jobs.blm),
                PlayerJobLabel(name: "RDM", level: jobs.rdm),
                PlayerJobLabel(name: "THF", level: jobs.thf),
                PlayerJobLabel(name: "PLD", level: jobs.pld),
                PlayerJobLabel(name: "DRK", level: jobs.drk),
                PlayerJobLabel(name: "BST", level: jobs.bst),
                PlayerJobLabel(name: "BRD", level: jobs.brd),
                PlayerJobLabel(name: "RNG", level: jobs.rng),
                PlayerJobLabel(name: "SAM", level: jobs.sam),
                PlayerJobLabel(name: "NIN", level: jobs.nin),
                PlayerJobLabel(name: "DRG", level: jobs.drg),
                PlayerJobLabel(name: "SMN", level: jobs.smn),
                PlayerJobLabel(name: "BLU", level: jobs.blu),
                PlayerJobLabel(name: "COR", level: jobs.cor),
                PlayerJobLabel(name: "PUP", level: jobs.pup),
                PlayerJobLabel(name: "DNC", level: jobs.dnc),
                PlayerJobLabel(name: "SCH", level: jobs.sch),
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
  final int level;

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
