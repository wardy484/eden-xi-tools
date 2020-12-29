import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getmyshittogether/item_search/item_search.dart';
import 'package:getmyshittogether/item_search/views/search_empty.dart';
import 'package:getmyshittogether/item_search/views/search_failure.dart';
import 'package:getmyshittogether/item_search/views/search_field.dart';
import 'package:getmyshittogether/item_search/views/search_loading.dart';
import 'package:getmyshittogether/item_search/views/search_sucess.dart';

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
    return Column(
      children: [
        SearchField(),
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
                  fetchMoreResults: () => _searchBloc.add(ItemSearchFetched()),
                );
              }

              return SearchFailure();
            },
          ),
        ),
      ],
    );
  }
}
