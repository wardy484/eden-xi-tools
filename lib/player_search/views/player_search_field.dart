import 'package:eden_xi_tools/player_search/player_search_bloc.dart';
import 'package:eden_xi_tools/player_search/player_search_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerSearchField extends StatelessWidget {
  const PlayerSearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PlayerSearchBloc searchBloc = BlocProvider.of<PlayerSearchBloc>(context);

    return TextField(
      onChanged: (String value) {
        if (value != null && value != "") {
          searchBloc.add(PlayerSearchFetch(playerName: value));
        }
      },
      decoration: InputDecoration(
        // border: InputBorder.none,
        hintText: 'Enter a search term',
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}
