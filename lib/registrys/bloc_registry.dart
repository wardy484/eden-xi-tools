import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_show/item_show.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/player_search.dart';
import 'package:eden_xi_tools/player_show/player_show.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';

part 'bloc_registry.g.dart';

class BlocRegistry {
  KiwiContainer container;

  BlocRegistry() : container = KiwiContainer();

  register() {
    _$BlocInjector().configure();
  }
}

abstract class BlocInjector {
  @Register.factory(ItemSearchBloc)
  @Register.factory(PlayerSearchBloc)
  @Register.factory(ItemShowBloc)
  @Register.factory(ItemAuctionHouseBloc)
  @Register.factory(ItemBazaarBloc)
  @Register.factory(PlayerShowBloc)
  @Register.factory(ItemFavouritesBloc)
  @Register.factory(PlayerFavouritesBloc)
  @Register.factory(SettingsBloc)
  void configure();
}
