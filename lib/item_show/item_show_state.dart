import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_show_state.freezed.dart';

@freezed
class ItemShowState with _$ItemShowState {
  const factory ItemShowState.initial(bool stacked) = ItemShowStateInitial;
  const factory ItemShowState.loading(bool stacked) = ItemShowStateLoading;
  const factory ItemShowState.loaded({
    required String key,
    required Item item,
    required List<BazaarItem> bazaarItems,
    required List<Owner> owners,
    required List<AuctionHouseItem> auctionItems,
    required List<Craft> crafts,
    required bool stacked,
  }) = ItemShowStateLoaded;
  const factory ItemShowState.error(
    bool stacked, {
    required String message,
  }) = ItemShowStateError;
}
