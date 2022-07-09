import 'package:eden_xi_tools/player_search/player_search.dart';
import 'package:eden_xi_tools/player_search/views/player_search_empty.dart';
import 'package:eden_xi_tools/player_search/views/player_search_failure.dart';
import 'package:eden_xi_tools/player_search/views/player_search_field.dart';
import 'package:eden_xi_tools/player_search/views/player_search_loading.dart';
import 'package:eden_xi_tools/player_search/views/player_search_sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerSearchTab extends ConsumerStatefulWidget {
  @override
  _PlayerSearchTabState createState() => _PlayerSearchTabState();
}

class _PlayerSearchTabState extends ConsumerState<PlayerSearchTab> {
  late PlayerSearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = ref.read(playerSearchProvider);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: Column(
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
    );
  }

  @override
  void dispose() {
    // _searchBloc.close();
    super.dispose();
  }
}
