import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/widgets/toggleable_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesButton<T> extends StatelessWidget {
  final T item;

  const FavouritesButton({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final favouritesBloc = BlocProvider.of<FavouritesBloc<T>>(context);

    return BlocBuilder<FavouritesBloc<T>, FavouritesState>(
      builder: (context, state) {
        bool value = state.when(
          initial: () => false,
          loading: () => false,
          loaded: (favourites) {
            List<T> faves = favourites as List<T>;

            return faves.contains(item);
          },
        );

        return ToggleableStar(
          value: value,
          onPressed: (bool favourited) {
            if (favourited) {
              favouritesBloc.add(FavouritesEvent.saved(item));
            } else {
              favouritesBloc.add(FavouritesEvent.removed(item));
            }
          },
        );
      },
    );
  }
}
