import 'dart:async';

import 'package:eden_xi_tools/eden/status/entities/yell/yell.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/yells/bloc/yells_bloc.dart';
import 'package:eden_xi_tools/yells/views/yell_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

class YellsTab extends StatefulWidget {
  YellsTab({Key key}) : super(key: key);

  @override
  _YellsTabState createState() => _YellsTabState();
}

class _YellsTabState extends State<YellsTab> {
  YellsBloc _yellsBloc;
  Completer<void> _refreshCompleter;

  @override
  void initState() {
    _refreshCompleter = Completer<void>();

    _yellsBloc = KiwiContainer().resolve<YellsBloc>();
    _yellsBloc.add(YellsEvent.requested());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff120D37),
      child: BlocProvider.value(
        value: _yellsBloc,
        child: BlocConsumer<YellsBloc, YellsState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (List<Yell> yells) {
                _refreshCompleter?.complete();
                _refreshCompleter = Completer();
              },
              orElse: () => null,
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => CenteredLoader(),
              loading: () => CenteredLoader(),
              loaded: (List<Yell> yells) {
                return RefreshIndicator(
                  onRefresh: () async {
                    _yellsBloc.add(YellsEvent.requested());
                  },
                  child: ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: yells.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          YellLine(yell: yells[index]),
                          SizedBox(height: 8),
                        ],
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _yellsBloc.close();
    super.dispose();
  }
}
