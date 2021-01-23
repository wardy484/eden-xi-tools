import 'package:eden_xi_tools/eden/misc/entities/status/status.dart';
import 'package:eden_xi_tools/server_status/server_status_notifier.dart';
import 'package:eden_xi_tools/widgets/server_status_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

class DashboardServerStatus extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    var status = watch(serverStatusProvider.state);

    return Card(
      child: Builder(
        builder: (_) {
          return status.maybeWhen(
            fetched: (Status status) => ListTile(
              leading: ServerStatusIndicator(status: status),
              title: Text("Players online: ${status.players}"),
            ),
            orElse: () => ListTile(
              leading: ServerStatusIndicator(status: defaultStatus),
              title: Text("Players online:"),
            ),
          );
        },
      ),
    );
  }
}
