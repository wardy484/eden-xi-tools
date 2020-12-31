import 'dart:ui';

import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/factory/PlayerFactory.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PlayerJobsCard extends StatelessWidget {
  final PlayerJobs jobs;

  const PlayerJobsCard({Key key, this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: BoxPadding,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Jobs",
                  style: Heading,
                ),
              ],
            ),
            SizedBox(height: 8),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 6,
              physics: NeverScrollableScrollPhysics(),
              children: PlayerFactory.makeJobsList(jobs),
            )
          ],
        ),
      ),
    );
  }
}
