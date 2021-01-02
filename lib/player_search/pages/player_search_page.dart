import 'package:eden_xi_tools/player_search/player_search.dart';
import 'package:eden_xi_tools/player_search/views/player_search_empty.dart';
import 'package:eden_xi_tools/player_search/views/player_search_failure.dart';
import 'package:eden_xi_tools/player_search/views/player_search_field.dart';
import 'package:eden_xi_tools/player_search/views/player_search_loading.dart';
import 'package:eden_xi_tools/player_search/views/player_search_sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

class PlayerSearchPage extends StatefulWidget {
  @override
  _PlayerSearchPageState createState() => _PlayerSearchPageState();
}

class _PlayerSearchPageState extends State<PlayerSearchPage> {
  PlayerSearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = KiwiContainer().resolve<PlayerSearchBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Player Search"),
        ),
        body: Column(
          children: [
            PlayerSearchField(),
            Expanded(
              child: BlocBuilder<PlayerSearchBloc, PlayerSearchState>(
                builder: (context, state) {
                  if (state is PlayerSearchEmpty) {
                    return PlayerSearchEmptyView();
                  }

                  if (state is PlayerSearchInital) {
                    return PlayerSearchLoadingView();
                  }

                  if (state is PlayerSearchSuccess) {
                    return PlayerSearchSuccessView(
                      state: state,
                      fetchMoreResults: () =>
                          _searchBloc.add(PlayerSearchRequest()),
                    );
                  }

                  return PlayerSearchFailureView();
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
