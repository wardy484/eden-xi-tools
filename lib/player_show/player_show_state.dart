import 'package:eden_xi_tools/eden/player/entities/player/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_bazaar_item/player_bazaar_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:equatable/equatable.dart';

abstract class PlayerShowState extends Equatable {
  @override
  List<Object> get props => [];
}

class PlayerShowInitial extends PlayerShowState {}

class PlayerShowFailure extends PlayerShowState {}

class PlayerShowSuccess extends PlayerShowState {
  final PlayerSearchResultItem playerResult;
  final Player player;
  final List<PlayerBazaarItem> bazaarItems;
  final List<PlayerAuctionHouseItem> auctionHouseItems;
  final PlayerCrafts crafts;

  PlayerShowSuccess({
    required this.playerResult,
    required this.bazaarItems,
    required this.auctionHouseItems,
    required this.player,
    required this.crafts,
  });

  PlayerShowSuccess copyWith({
    PlayerSearchResultItem? playerResult,
    List<PlayerBazaarItem>? bazaarItems,
    List<PlayerAuctionHouseItem>? auctionHouseItems,
    Player? player,
    PlayerCrafts? crafts,
  }) {
    return PlayerShowSuccess(
      playerResult: playerResult ?? this.playerResult,
      bazaarItems: bazaarItems ?? this.bazaarItems,
      auctionHouseItems: auctionHouseItems ?? this.auctionHouseItems,
      player: player ?? this.player,
      crafts: crafts ?? this.crafts,
    );
  }

  @override
  List<Object> get props => [
        playerResult,
        bazaarItems,
        auctionHouseItems,
        player,
        crafts,
      ];

  @override
  String toString() => 'Player show success { name: ${playerResult.charname} }';
}
