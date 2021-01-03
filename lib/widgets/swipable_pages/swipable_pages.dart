import 'package:flutter/material.dart';

class SwipablePages extends StatefulWidget {
  final List<Widget> pages;
  final int index;
  final Function(int index) onSwipe;

  SwipablePages({
    Key key,
    @required this.pages,
    @required this.index,
    @required this.onSwipe,
  }) : super(key: key);

  @override
  _SwipablePagesState createState() => _SwipablePagesState();
}

class _SwipablePagesState extends State<SwipablePages> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (dragEndDetails) {
        if (dragEndDetails.primaryVelocity < 0) {
          if (widget.index + 1 < widget.pages.length) {
            widget.onSwipe(widget.index + 1);
          }
        } else if (dragEndDetails.primaryVelocity > 0) {
          if (widget.index - 1 >= 0) {
            widget.onSwipe(widget.index - 1);
          }
        }
      },
      child: widget.pages.elementAt(widget.index),
    );
  }
}
