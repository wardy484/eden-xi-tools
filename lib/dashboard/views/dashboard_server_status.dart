import 'package:eden_xi_tools/eden/status/entities/status.dart';
import 'package:eden_xi_tools/server_status/bloc/server_status_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

import 'package:flutter/material.dart';

class DashboardServerStatus extends StatefulWidget {
  const DashboardServerStatus({Key key}) : super(key: key);

  @override
  _DashboardServerStatusState createState() => _DashboardServerStatusState();
}

class _DashboardServerStatusState extends State<DashboardServerStatus> {
  ServerStatusBloc _statusBloc;

  @override
  void initState() {
    _statusBloc = KiwiContainer().resolve<ServerStatusBloc>();
    _statusBloc.add(ServerStatusEvent.fetched());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _statusBloc,
      child: Card(
        child: BlocBuilder<ServerStatusBloc, ServerStatusState>(
          builder: (context, state) {
            return state.when(
              initial: () => ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.green,
                ),
                title: Text("Server is online"),
              ),
              loading: () => ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.green,
                ),
                title: Text("Server is online"),
              ),
              offline: () => ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                ),
                title: Text("Server is offline"),
              ),
              online: () => ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.green,
                ),
                title: Text("Server is online"),
              ),
            );
          },
        ),
      ),
    );
  }

  String buildMessage(Status status) {
    if (status.online) {
      return "Server is online";
    }

    return "Server is offline";
  }

  @override
  void dispose() {
    _statusBloc.close();
    super.dispose();
  }
}
