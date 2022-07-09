import 'package:eden_xi_tools/item_search/views/item_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/views/search_empty.dart';
import 'package:eden_xi_tools/item_search/views/search_failure.dart';
import 'package:eden_xi_tools/item_search/views/search_loading.dart';
import 'package:eden_xi_tools/item_search/views/search_sucess.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemSearchPage extends ConsumerStatefulWidget {
  @override
  _ItemSearchPageState createState() => _ItemSearchPageState();
}

class _ItemSearchPageState extends ConsumerState<ItemSearchPage> {
  late ItemSearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = ref.read(itemSearchProvider);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: Scaffold(
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
      ),
    );
  }

  @override
  void dispose() {
    _searchBloc.close();
    super.dispose();
  }
}
