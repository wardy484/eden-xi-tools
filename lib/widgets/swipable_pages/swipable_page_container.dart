import 'package:flutter/material.dart';

class SwipablePageContent extends StatelessWidget {
  final Widget child;

  const SwipablePageContent({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: this.child,
          ),
        )
      ],
    );
  }
}
