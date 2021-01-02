import 'package:eden_xi_tools/dashboard/pages/dashboard_page_hydrated.dart';
import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/item_bazaar/bloc/item_bazaar_bloc.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/player_search_bloc.dart';
import 'package:eden_xi_tools/player_show/player_show_bloc.dart';
import 'package:eden_xi_tools/registrys/app_registry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/item_show/item_show_bloc.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_search/item_search.dart';
import 'package:eden_xi_tools/item_search/item_search_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:kiwi/kiwi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();

  KiwiContainer container = KiwiContainer();
  AppRegistry().register();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ItemSearchBloc>(
          create: (context) => container.resolve<ItemSearchBloc>(),
        ),
        BlocProvider<PlayerSearchBloc>(
          create: (context) => container.resolve<PlayerSearchBloc>(),
        ),
        BlocProvider<ItemShowBloc>(
          create: (context) => container.resolve<ItemShowBloc>(),
        ),
        BlocProvider<ItemAuctionHouseBloc>(
          create: (context) => container.resolve<ItemAuctionHouseBloc>(),
        ),
        BlocProvider<ItemBazaarBloc>(
          create: (context) => container.resolve<ItemBazaarBloc>(),
        ),
        BlocProvider<PlayerShowBloc>(
          create: (context) => container.resolve<PlayerShowBloc>(),
        ),
        BlocProvider<ItemFavouritesBloc>(
          create: (context) => container.resolve<ItemFavouritesBloc>(),
        ),
        BlocProvider<PlayerFavouritesBloc>(
          create: (context) => container.resolve<PlayerFavouritesBloc>(),
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
