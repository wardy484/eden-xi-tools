import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  final bool value;
  final Function onPressed;

  const FavouriteButton({Key key, this.value, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Favourite this player",
      child: IconButton(
        icon: Icon(getIcon()),
        onPressed: () {
          onPressed(!value);
        },
        color: getColour(),
      ),
    );
  }

  Color getColour() {
    return value ? Colors.yellow : Colors.black;
  }

  IconData getIcon() {
    return value ? Icons.star : Icons.star_border_outlined;
  }
}
