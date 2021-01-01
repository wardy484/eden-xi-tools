import 'package:eden_xi_tools/item_search/views/item_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/views/search_empty.dart';
import 'package:eden_xi_tools/item_search/views/search_failure.dart';
import 'package:eden_xi_tools/item_search/views/search_loading.dart';
import 'package:eden_xi_tools/item_search/views/search_sucess.dart';

class ItemSearchPage extends StatefulWidget {
  @override
  _ItemSearchPageState createState() => _ItemSearchPageState();
}

class _ItemSearchPageState extends State<ItemSearchPage> {
  ItemSearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = BlocProvider.of<ItemSearchBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Search"),
      ),
      body: Column(
        children: [
          ItemSearchField(),
          Expanded(
            child: BlocBuilder<ItemSearchBloc, ItemSearchState>(
              builder: (context, state) {
                if (state is ItemSearchEmpty) {
                  return SearchEmpty();
                }

                if (state is ItemSearchInitial) {
                  return SearchLoading();
                }

                if (state is ItemSearchSuccess) {
                  return SearchSuccess(
                    state: state,
                    fetchMoreResults: () =>
                        _searchBloc.add(ItemSearchFetched()),
                  );
                }

                return SearchFailure();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchBloc.add(ItemSearchCleared());
    super.dispose();
  }
}
