import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'yells_controller.g.dart';

@riverpod
class YellsController extends _$YellsController {
  @override
  FutureOr<List<Yell>> build() async {
    return ref.read(edenProvider).server.getYells();
  }
}
