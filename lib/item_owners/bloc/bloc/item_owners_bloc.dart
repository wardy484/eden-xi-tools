import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'item_owners_event.dart';
part 'item_owners_state.dart';
part 'item_owners_bloc.freezed.dart';

final itemOwnersProvider = Provider.autoDispose<ItemOwnersBloc>(
  (ref) => ItemOwnersBloc(eden: ref.read(edenProvider)),
);

class ItemOwnersBloc extends Bloc<ItemOwnersEvent, ItemOwnersState> {
  final EdenXiApi eden;

  ItemOwnersBloc({
    required this.eden,
  }) : super(_Initial()) {
    on<ItemOwnersEvent>(_onEvent);
  }

  void _onEvent(
    ItemOwnersEvent event,
    Emitter<ItemOwnersState> emit,
  ) async {
    emit(ItemOwnersState.loading());

    emit(
      await await event.when(
        started: () => ItemOwnersState.initial(),
        requested: (int id) async {
          try {
            var owners = await eden.items.getOwners(id);
            return ItemOwnersState.success(owners);
          } catch (e) {
            return ItemOwnersState.error();
          }
        },
      ),
    );
  }
}
