import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getmyshittogether/eden/search/entities/search_result_item.dart';
import 'package:getmyshittogether/item_show/item_show.dart';
import 'package:getmyshittogether/item_show/views/item_show_navigation_bar.dart';
import 'package:getmyshittogether/item_show/views/states/item_show_failure_state.dart';
import 'package:getmyshittogether/item_show/views/states/item_show_loading_state.dart';
import 'package:getmyshittogether/item_show/views/states/item_show_success_state.dart';

class ItemShowPage extends StatefulWidget {
  final SearchResultItem item;

  const ItemShowPage({Key key, this.item}) : super(key: key);

  @override
  _ItemShowPageState createState() => _ItemShowPageState();
}

class _ItemShowPageState extends State<ItemShowPage> {
  int _selectedPageIndex = 0;
  ItemShowBloc _showItemBloc;

  @override
  void initState() {
    super.initState();
    _showItemBloc = BlocProvider.of<ItemShowBloc>(context);
    _showItemBloc.add(ItemShowRequested(key: widget.item.key));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemShowBloc, ItemShowState>(
      builder: (context, state) {
        if (state is ItemShowInitial) {
          return ItemShowLoadingState(item: widget.item);
        }

        if (state is ItemShowSuccess) {
          return ItemShowSuccessState(
            state: state,
            currentPageIndex: _selectedPageIndex,
            onRefreshPressed: _refreshPage,
            toggleStack: _toggleStack,
            navigationBar: ItemShowNavigationBar(
              currentIndex: _selectedPageIndex,
              onTap: _onPageNavigation,
            ),
          );
        }

        return ItemShowFailureState(item: widget.item);
      },
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }

  void _refreshPage(bool showStacked) {
    _showItemBloc.add(ItemShowRequested(
      key: widget.item.key,
      stacked: showStacked,
    ));
  }

  void _toggleStack(bool newValue) {
    _showItemBloc.add(ItemShowRequested(
      key: widget.item.key,
      stacked: newValue,
    ));
  }

  @override
  void dispose() {
    _showItemBloc.add(ItemShowClear());
    super.dispose();
  }
}
