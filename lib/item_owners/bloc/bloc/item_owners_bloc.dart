import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/items/entities/owner/owner.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_owners_event.dart';
part 'item_owners_state.dart';
part 'item_owners_bloc.freezed.dart';

class ItemOwnersBloc extends Bloc<ItemOwnersEvent, ItemOwnersState> {
  final ItemRepository itemRepository;

  ItemOwnersBloc(this.itemRepository) : super(_Initial()) {
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
            var owners = await itemRepository.getOwners(id);
            return ItemOwnersState.success(owners);
          } catch (e) {
            return ItemOwnersState.error();
          }
        },
      ),
    );
  }
}
