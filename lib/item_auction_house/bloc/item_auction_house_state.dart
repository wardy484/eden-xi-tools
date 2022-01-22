part of 'item_auction_house_bloc.dart';

abstract class ItemAuctionHouseState extends Equatable {
  final bool stacked = false;

  const ItemAuctionHouseState();

  @override
  List<Object> get props => [];
}

class ItemAuctionHouseInitial extends ItemAuctionHouseState {}

class ItemAuctionHouseFailure extends ItemAuctionHouseState {}

class ItemAuctionHouseLoading extends ItemAuctionHouseState {
  final bool stacked;

  const ItemAuctionHouseLoading(this.stacked);

  @override
  List<Object> get props => [stacked];
}

class ItemAuctionHouseSuccess extends ItemAuctionHouseState {
  final String key;
  final bool stacked;
  final List<AuctionHouseItem> auctionHouseItems;

  const ItemAuctionHouseSuccess({
    required this.key,
    required this.stacked,
    required this.auctionHouseItems,
  });

  ItemAuctionHouseSuccess copyWith({
    String? key,
    bool? stacked,
    List<AuctionHouseItem>? auctionHouseItems,
  }) {
    return ItemAuctionHouseSuccess(
      key: key ?? this.key,
      stacked: stacked ?? this.stacked,
      auctionHouseItems: auctionHouseItems ?? this.auctionHouseItems,
    );
  }

  @override
  List<Object> get props => [key, stacked, auctionHouseItems];

  @override
  String toString() {
    return "Item Auction House Success: { key: $key, stacked: $stacked, auctionHouseItems: $auctionHouseItems";
  }
}
