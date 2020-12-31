import 'package:equatable/equatable.dart';

class PlayerCrafts extends Equatable {
  final double alchemy;
  final double bonecraft;
  final double clothcraft;
  final double cooking;
  final double fishing;
  final double goldsmithing;
  final double leathercraft;
  final double smithing;
  final double synergy;
  final double woodworking;

  const PlayerCrafts({
    this.alchemy,
    this.bonecraft,
    this.clothcraft,
    this.cooking,
    this.fishing,
    this.goldsmithing,
    this.leathercraft,
    this.smithing,
    this.synergy,
    this.woodworking,
  });

  @override
  List<Object> get props => [
        alchemy,
        bonecraft,
        clothcraft,
        cooking,
        fishing,
        goldsmithing,
        leathercraft,
        smithing,
        synergy,
        woodworking,
      ];

  @override
  String toString() => 'Player crafting ';
}

class PlayerJobs extends Equatable {
  final int blm;
  final int blu;
  final int brd;
  final int bst;
  final int cor;
  final int dnc;
  final int drg;
  final int drk;
  final int mnk;
  final int nin;
  final int pld;
  final int pup;
  final int rdm;
  final int rng;
  final int sam;
  final int sch;
  final int smn;
  final int thf;
  final int war;
  final int whm;

  const PlayerJobs({
    this.blm,
    this.blu,
    this.brd,
    this.bst,
    this.cor,
    this.dnc,
    this.drg,
    this.drk,
    this.mnk,
    this.nin,
    this.pld,
    this.pup,
    this.rdm,
    this.rng,
    this.sam,
    this.sch,
    this.smn,
    this.thf,
    this.war,
    this.whm,
  });

  @override
  List<Object> get props => [
        blm,
        blu,
        brd,
        bst,
        cor,
        dnc,
        drg,
        drk,
        mnk,
        nin,
        pld,
        pup,
        rdm,
        rng,
        sam,
        sch,
        smn,
        thf,
        war,
        whm,
      ];

  @override
  String toString() => 'Player Jobs ';
}

class PlayerRanks extends Equatable {
  final int bastok;
  final int sandoria;
  final int windurst;

  const PlayerRanks({this.bastok, this.sandoria, this.windurst});

  @override
  List<Object> get props => [bastok, sandoria, windurst];

  @override
  String toString() =>
      'Player Ranks { bastok: $bastok, sandoria: $sandoria, windurst: $windurst }';
}

class Player extends Equatable {
  final String avatar;
  final int id;
  final String jobString;
  final PlayerJobs jobs;
  final int mentor;
  final String name;
  final int nameFlags;
  final int nation;
  final PlayerRanks ranks;
  final String title;
  final int online;

  const Player({
    this.avatar,
    this.id,
    this.jobString,
    this.jobs,
    this.mentor,
    this.name,
    this.nameFlags,
    this.nation,
    this.ranks,
    this.title,
    this.online,
  });

  @override
  List<Object> get props => [
        avatar,
        id,
        jobString,
        jobs,
        mentor,
        name,
        nameFlags,
        nation,
        ranks,
        title,
      ];

  @override
  String toString() => 'Player { id: $id, name: $name, title: $title }';
}

class PlayerCraft extends Equatable {
  final String name;
  final int level;

  const PlayerCraft({this.name, this.level});

  @override
  List<Object> get props => [name, level];

  @override
  String toString() => 'Player Craft { name: $name, level: $level }';
}

class PlayerBazaarItem extends Equatable {
  final int bazaar;
  final String itemName;

  const PlayerBazaarItem({this.bazaar, this.itemName});

  @override
  List<Object> get props => [bazaar, itemName];

  @override
  String toString() =>
      'Player Bazaar Item { bazaar: $bazaar, itemName: $itemName }';
}

class PlayerAuctionHouseItem extends Equatable {
  final String buyerName;
  final String name;
  final int sale;
  final int sellDate;
  final String sellerName;
  final int stackSize;

  const PlayerAuctionHouseItem({
    this.buyerName,
    this.name,
    this.sale,
    this.sellDate,
    this.sellerName,
    this.stackSize,
  });

  @override
  List<Object> get props => [
        buyerName,
        name,
        sale,
        sellDate,
        sellerName,
        stackSize,
      ];

  @override
  String toString() =>
      'Player Auction House { buyerName: $buyerName, name: $name, sale: $sale, sellDate: $sellDate, sellerName: $sellerName, stackSize: $stackSize }';
}
