import 'package:eden_xi_tools/auction_house_subscriptions/models/auction_house_history_item.dart';
import 'package:isar/isar.dart';

part 'auction_house_subscription.g.dart';

@Collection()
class AuctionHouseSubscription {
  int id = Isar.autoIncrement;

  late String playerName;

  final items = IsarLinks<AuctionHouseHistoryItem>();
}
