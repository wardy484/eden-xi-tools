import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_show_state.freezed.dart';

@freezed
class PlayerShowState with _$PlayerShowState {
  const factory PlayerShowState.initial() = _Initial;
  const factory PlayerShowState.loading() = _Loading;
  const factory PlayerShowState.loaded({
    required PlayerSearchResultItem playerResult,
    required Player player,
    required PlayerEquipment equipment,
    required List<PlayerAuctionHouseItem> auctionHouseItems,
    required List<PlayerBazaarItem> bazaarItems,
    required PlayerCrafts crafts,
  }) = _Loaded;
}
