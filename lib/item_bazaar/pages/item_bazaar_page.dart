import 'dart:async';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/views/item_bazaar_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemBazaarPage extends StatefulWidget {
  final String itemKey;

  const ItemBazaarPage({Key key, this.itemKey}) : super(key: key);

  @override
  _ItemBazaarPageState createState() => _ItemBazaarPageState();
}

class _ItemBazaarPageState extends State<ItemBazaarPage> {
  Completer<void> _refreshCompleter;
  ItemBazaarBloc _bazaarBloc;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    _bazaarBloc = BlocProvider.of<ItemBazaarBloc>(context);

    if (_bazaarBloc.state is ItemBazaarInitial) {
      _bazaarBloc.add(ItemBazaarRequested(itemKey: widget.itemKey));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: BlocConsumer<ItemBazaarBloc, ItemBazaarState>(
        listener: (context, state) {
          if (state is ItemBazaarSuccess) {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          }
        },
        builder: (context, state) {
          if (state is ItemBazaarSuccess) {
            if (state.bazaarItems.length < 1) {
              return Center(
                child: Text("No bazaar history..."),
              );
            }

            return ItemBazaarList(
              onRefresh: () {
                _bazaarBloc.add(ItemBazaarRefreshed());
                return _refreshCompleter.future;
              },
              items: state.bazaarItems,
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
