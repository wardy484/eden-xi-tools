import 'package:eden_xi_tools/dashboard/pages/dashboard_page.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
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

void main() {
  ItemRepository itemRepository = ItemRepository(http.Client());
  PlayerRepository playerRepository = PlayerRepository(http.Client());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ItemSearchBloc>(
          create: (context) => ItemSearchBloc(httpClient: http.Client())
            ..add(InitiateItemSearch()),
        ),
        BlocProvider<PlayerSearchBloc>(
          create: (context) =>
              PlayerSearchBloc(playerRepository: playerRepository),
        ),
        BlocProvider<ItemShowBloc>(
          create: (context) => ItemShowBloc(itemRepository: itemRepository),
        ),
        BlocProvider<PlayerShowBloc>(
          create: (context) =>
              PlayerShowBloc(playerRepository: playerRepository),
        ),
        BlocProvider<UserSettingsBloc>(
          create: (context) =>
              UserSettingsBloc(playerRepository: playerRepository)
                ..add(UserSettingsFetch()),
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
      home: DashboardPage(),
    );
  }
}
