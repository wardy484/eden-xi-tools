import 'dart:ui';

import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PlayerProfileSkillLabel extends StatelessWidget {
  final String name;
  final dynamic level;

  const PlayerProfileSkillLabel({Key key, this.name, this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BoxPadding,
      child: Column(
        children: [
          Text(name, style: SubHeading),
          Text('$level'),
        ],
      ),
    );
  }
}
