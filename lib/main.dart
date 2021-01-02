import 'package:eden_xi_tools/dashboard/pages/dashboard_page_hydrated.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/eden/settings/data_access/favourite_player_data_access.dart';
import 'package:eden_xi_tools/eden/settings/repository/favourite_player_repository.dart';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/player_search_bloc.dart';
import 'package:eden_xi_tools/player_show/player_show_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/eden/items/repositories/ItemRepository.dart';
import 'package:eden_xi_tools/item_show/item_show_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/item_search_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();

  FavouritePlayerDA favouritePlayerDA = FavouritePlayerDA();
  ItemRepository itemRepository = ItemRepository(http.Client());
  PlayerRepository playerRepository = PlayerRepository(http.Client());
  FavouritePlayerRepository favouritePlayerRepository =
      FavouritePlayerRepository(
    favouritePlayerDA: favouritePlayerDA,
    playerRepository: playerRepository,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ItemSearchBloc>(
          create: (context) => ItemSearchBloc(httpClient: http.Client())
            ..add(ItemSearchCleared()),
        ),
        BlocProvider<PlayerSearchBloc>(
          create: (context) =>
              PlayerSearchBloc(playerRepository: playerRepository),
        ),
        BlocProvider<ItemShowBloc>(
          create: (context) => ItemShowBloc(itemRepository: itemRepository),
        ),
        BlocProvider<ItemAuctionHouseBloc>(
          create: (context) =>
              ItemAuctionHouseBloc(itemRepository: itemRepository),
        ),
        BlocProvider<ItemBazaarBloc>(
          create: (context) => ItemBazaarBloc(itemRepository: itemRepository),
        ),
        BlocProvider<PlayerShowBloc>(
          create: (context) =>
              PlayerShowBloc(playerRepository: playerRepository),
        ),
        BlocProvider<ItemFavouritesBloc>(
          create: (context) => ItemFavouritesBloc(),
        ),
        BlocProvider<PlayerFavouritesBloc>(
          create: (context) => PlayerFavouritesBloc(),
        ),
        BlocProvider<UserSettingsBloc>(
          create: (context) => UserSettingsBloc(
            playerRepository: playerRepository,
            favouritePlayerRepository: favouritePlayerRepository,
          )..add(UserSettingsFetch()),
        ),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eden Tools",
      home: DashboardPageHydrated(),
    );
  }
}
