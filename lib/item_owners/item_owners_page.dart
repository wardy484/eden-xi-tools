import 'dart:async';
import 'package:eden_xi_tools/eden/items/entities/item/item.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
import 'package:eden_xi_tools/item_owners/bloc/bloc/item_owners_bloc.dart';
import 'package:eden_xi_tools/item_owners/widgets/item_owners_list.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOwnersPage extends StatefulWidget {
  final Item item;

  const ItemOwnersPage({Key key, this.item}) : super(key: key);

  @override
  _ItemOwnersPageState createState() => _ItemOwnersPageState();
}

class _ItemOwnersPageState extends State<ItemOwnersPage> {
  Completer<void> _refreshCompleter;
  ItemOwnersBloc _ownersBloc;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    _ownersBloc = BlocProvider.of<ItemOwnersBloc>(context);

    _ownersBloc.state.maybeWhen(
      initial: () => _ownersBloc.add(ItemOwnersEvent.requested(widget.item.id)),
      orElse: () => null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: BlocConsumer<ItemOwnersBloc, ItemOwnersState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (_) {
              _refreshCompleter?.complete();
              _refreshCompleter = Completer();
            },
            orElse: () => {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            success: (List<Owner> owners) {
              if (owners.length < 1) {
                return Text("No players own this item yet!");
              }

              return ItemOwnersList(
                onRefresh: () {
                  _ownersBloc.add(ItemOwnersEvent.requested(widget.item.id));
                  return _refreshCompleter.future;
                },
                owners: owners,
              );
            },
            error: () => Text("Unable to fetch owners please try again later."),
            orElse: () => CenteredLoader(),
          );
        },
      ),
    );
  }
}
