import 'package:eden_xi_tools/server_status/bloc/server_status_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    _statusBloc = BlocProvider.of<ServerStatusBloc>(context);
    _statusBloc.add(ServerStatusEvent.fetched());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<ServerStatusBloc, ServerStatusState>(
        builder: (context, state) {
          return state.when(
            initial: () => ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.green,
              ),
              title: Row(
                children: [
                  Text("Players online: "),
                ],
              ),
            ),
            loading: () => ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.green,
              ),
              title: Row(
                children: [
                  Text("Players online: "),
                ],
              ),
            ),
            offline: () => ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.red,
              ),
              title: Text("Server is offline"),
            ),
            online: (int players) => ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.green,
              ),
              title: Text("Players online: $players"),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _statusBloc.close();
    super.dispose();
  }
}
