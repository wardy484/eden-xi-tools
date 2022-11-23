import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'server_status_controller.g.dart';

@riverpod
class ServerStatusController extends _$ServerStatusController {
  @override
  FutureOr<Status> build() async {
    return ref.read(edenProvider).server.getServerStatus();
  }
}
