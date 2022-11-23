import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';

class PlayerDetails {
  final Player details;
  final PlayerEquipment equipment;
  final PlayerCrafts crafts;
  final List<PlayerAuctionHouseItem> auctionHouseItems;
  final List<PlayerBazaarItem> bazaarItems;

  PlayerDetails({
    required this.details,
    required this.equipment,
    required this.crafts,
    required this.auctionHouseItems,
    required this.bazaarItems,
  });
}
