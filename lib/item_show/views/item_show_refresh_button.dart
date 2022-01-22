import 'package:flutter/material.dart';

class ItemShowRefreshButton extends StatelessWidget {
  final Function onPressed;

  const ItemShowRefreshButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Refresh page",
      child: TextButton(
        onPressed: () => onPressed,
        child: Icon(
          Icons.refresh,
          size: 26.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
