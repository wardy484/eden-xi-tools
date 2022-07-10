import 'package:eden_xi_tools/item_search/widgets/search_field.dart';
import 'package:eden_xi_tools/player_search/player_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerSearchField extends StatelessWidget {
  const PlayerSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    PlayerSearchBloc searchBloc = BlocProvider.of<PlayerSearchBloc>(context);

    return SearchField(
      onChange: (String value) {
        searchBloc.add(PlayerSearchFetch(playerName: value));
      },
      onClear: () {
        searchBloc.add(PlayerSearchCleared());
      },
    );
  }
}
