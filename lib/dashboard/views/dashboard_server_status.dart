import 'package:eden_xi_tools/server_status/server_status_notifier.dart';
import 'package:eden_xi_tools/server_status/view/server_status_indicator.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardServerStatus extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var status = ref.watch(serverStatusProvider);

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
