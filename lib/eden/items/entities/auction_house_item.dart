import 'package:equatable/equatable.dart';

class AuctionHouseItem extends Equatable {
  final String buyerName;
  final String name;
  final int sale;
  final int sellDate;
  final String sellerName;

  const AuctionHouseItem({
    this.buyerName,
    this.name,
    this.sale,
    this.sellDate,
    this.sellerName,
  });

  @override
  List<Object> get props => [
        buyerName,
        name,
        sale,
        sellDate,
        sellerName,
      ];

  @override
  String toString() =>
      'Auction house item { buyerName: $buyerName, name: $name, sale: $sale, sellDate: $sellDate, sellerName: $sellerName }';
}
