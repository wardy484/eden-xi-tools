import 'package:isar/isar.dart';

part 'auction_house_history_item.g.dart';

@Collection()
class AuctionHouseHistoryItem {
  int id = Isar.autoIncrement;

  late String buyerName;

  late String name;

  late int salel;

  late int sellDate;

  late String sellerName;

  late String stackSize;
}
