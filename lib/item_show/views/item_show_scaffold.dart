import 'package:flutter/material.dart';

class ItemShowScaffold extends StatelessWidget {
  final Widget header;
  final Widget body;
  final List<Widget> actions;
  final Widget bottomNavigationBar;

  const ItemShowScaffold({
    Key key,
    @required this.header,
    @required this.body,
    this.actions = const [],
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: header,
          actions: actions,
        ),
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
