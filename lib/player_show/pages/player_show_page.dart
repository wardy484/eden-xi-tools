import 'dart:async';

import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/player_show/player_show.dart';
import 'package:eden_xi_tools/player_show/player_show_events.dart';
import 'package:eden_xi_tools/player_show/views/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_failure_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_loading_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_success_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

class PlayerShowPage extends StatefulWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowPage({Key key, this.playerResult}) : super(key: key);

  @override
  _PlayerShowPageState createState() => _PlayerShowPageState();
}

class _PlayerShowPageState extends State<PlayerShowPage> {
  int _selectedPageIndex = 0;
  PlayerShowBloc _playerShowBloc;
  Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();

    _playerShowBloc = KiwiContainer().resolve<PlayerShowBloc>();
    _playerShowBloc.add(PlayerShowRequested(playerResult: widget.playerResult));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _playerShowBloc,
      child: BlocConsumer<PlayerShowBloc, PlayerShowState>(
        listener: (context, state) {
          if (state is PlayerShowSuccessState) {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          }
        },
        builder: (context, state) {
          if (state is PlayerShowInitial) {
            return PlayerShowLoadingState(playerResult: widget.playerResult);
          }

          if (state is PlayerShowSuccess) {
            return PlayerShowSuccessState(
              state: state,
              currentPageIndex: _selectedPageIndex,
              onRefreshPressed: _refreshPage,
              navigationBar: PlayerShowNavigationBar(
                currentIndex: _selectedPageIndex,
                onTap: _onPageNavigation,
              ),
            );
          }

          return PlayerShowFailureState(item: widget.playerResult);
        },
      ),
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }

  Future<void> _refreshPage() {
    _playerShowBloc.add(PlayerShowRequested(
      playerResult: widget.playerResult,
    ));

    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    _playerShowBloc.close();
    super.dispose();
  }
}
