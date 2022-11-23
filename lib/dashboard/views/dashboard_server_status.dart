import 'package:eden_xi_tools/dashboard/server_status_controller.dart';
import 'package:eden_xi_tools/dashboard/widgets/server_status_indicator.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardServerStatus extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var status = ref.watch(serverStatusControllerProvider);

    return Card(
      child: Builder(
        builder: (_) {
          return status.maybeWhen(
            data: (Status status) => ListTile(
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
