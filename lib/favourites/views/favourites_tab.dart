import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesTab<T> extends StatelessWidget {
  final Widget Function(T item) cardBuilder;
  final String emptyLabel;

  const FavouritesTab({
    Key key,
    @required this.cardBuilder,
    @required this.emptyLabel,
  })  : assert(cardBuilder != null),
        assert(emptyLabel != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc<T>, FavouritesState>(
      builder: (context, state) {
        return state.when(
          initial: _handleInitial,
          loading: _handleLoading,
          loaded: (favourites) => _handleLoaded(favourites, context),
        );
      },
    );
  }

  Widget _handleInitial() {
    return CenteredMessage(emptyLabel);
  }

  Widget _handleLoading() {
    return CenteredLoader();
  }

  Widget _handleLoaded(favourites, BuildContext context) {
    final _favouritesBloc = BlocProvider.of<FavouritesBloc<T>>(context);

    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        _favouritesBloc.add(FavouritesEvent.sorted(oldIndex, newIndex));
      },
      children: _buildChildren(favourites),
    );
  }

  List<Widget> _buildChildren(favourites) {
    return favourites
        .map<Widget>((favourite) => cardBuilder(favourite))
        .toList();
  }
}
