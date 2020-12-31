import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/item_search_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemSearchBloc searchBloc = BlocProvider.of<ItemSearchBloc>(context);

    return TextField(
      onChanged: (String value) {
        if (value != null && value != "") {
          searchBloc.add(ItemSearchRequested(itemName: value));
        }
      },
      decoration: InputDecoration(
        // border: InputBorder.none,
        hintText: 'Enter a search term',
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}
