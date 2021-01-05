import 'package:flutter/material.dart';

class SwipableBottomBar extends StatefulWidget {
  final List<BottomNavigationBarItem> tabs;
  final int index;
  final Function(int index) onTap;

  SwipableBottomBar({
    Key key,
    @required this.tabs,
    @required this.index,
    @required this.onTap,
  }) : super(key: key);

  @override
  _SwipableBottomBarState createState() => _SwipableBottomBarState();
}

class _SwipableBottomBarState extends State<SwipableBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: widget.tabs,
        currentIndex: widget.index,
        onTap: widget.onTap,
      ),
      decoration: BoxDecoration(
        // color: globals.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
