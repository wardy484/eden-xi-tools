import 'package:flutter/material.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Begin searching an item by typing in the search box above.",
        ),
      ),
    );
  }
}
