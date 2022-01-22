part of 'item_auction_house_bloc.dart';

abstract class ItemAuctionHouseEvent extends Equatable {
  const ItemAuctionHouseEvent();

  @override
  List<Object> get props => [];
}

class ItemAuctionHouseRequested extends ItemAuctionHouseEvent {
  final String itemKey;
  final bool stacked;

  const ItemAuctionHouseRequested({
    required this.itemKey,
    required this.stacked,
  });

  @override
  List<Object> get props => [itemKey];
}

class ItemAuctionHouseStackToggled extends ItemAuctionHouseEvent {
  final bool stacked;

  const ItemAuctionHouseStackToggled({
    required this.stacked,
  });

  @override
  List<Object> get props => [stacked];
}

class ItemAuctionHouseRefreshed extends ItemAuctionHouseEvent {}

class ItemAuctionHouseCleared extends ItemAuctionHouseEvent {}
