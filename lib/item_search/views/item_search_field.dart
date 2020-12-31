import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/views/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemSearchField extends StatelessWidget {
  const ItemSearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemSearchBloc searchBloc = BlocProvider.of<ItemSearchBloc>(context);

    return SearchField(
      onChange: (String value) {
        searchBloc.add(ItemSearchRequested(itemName: value));
      },
      onClear: () {
        searchBloc.add(ItemSearchCleared());
      },
    );
  }
}
