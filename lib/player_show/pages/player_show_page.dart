import 'dart:async';

import 'package:eden_xi_tools/player_equipment/bloc/player_equipment_bloc.dart';
import 'package:eden_xi_tools/player_show/player_show.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_failure_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_loading_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_success_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerShowPage extends ConsumerStatefulWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowPage({
    Key? key,
    required this.playerResult,
  }) : super(key: key);

  @override
  _PlayerShowPageState createState() => _PlayerShowPageState();
}

class _PlayerShowPageState extends ConsumerState<PlayerShowPage> {
  late PlayerShowBloc _playerShowBloc;
  late PlayerEquipmentBloc _equipmentBloc;

  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();

    _playerShowBloc = ref.read(playerShowProvider);
    _playerShowBloc.add(PlayerShowRequested(playerResult: widget.playerResult));

    _equipmentBloc = ref.read(playerEquipmentProvider);
    _equipmentBloc
        .add(PlayerEquipmentEvent.fetched(widget.playerResult.charname));

    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _playerShowBloc),
        BlocProvider.value(value: _equipmentBloc),
      ],
      child: BlocConsumer<PlayerShowBloc, PlayerShowState>(
        listener: (context, state) {
          if (state is PlayerShowSuccessState) {
            _refreshCompleter.complete();
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
              onRefreshPressed: _refreshPage,
            );
          }

          return PlayerShowFailureState(item: widget.playerResult);
        },
      ),
    );
  }

  Future<void> _refreshPage() {
    _playerShowBloc.add(PlayerShowRequested(
      playerResult: widget.playerResult,
    ));

    _equipmentBloc
        .add(PlayerEquipmentEvent.fetched(widget.playerResult.charname));

    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    _playerShowBloc.close();
    _equipmentBloc.close();

    super.dispose();
  }
}
