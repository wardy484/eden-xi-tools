import 'package:flutter/material.dart';

class SearchFailure extends StatelessWidget {
  const SearchFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Failed to fetch search results, please try again later.",
      ),
    );
  }
}
