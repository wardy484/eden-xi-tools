import 'package:eden_xi_tools/dashboard/pages/dashboard_page.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/registrys/app_registry.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
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
        BlocProvider<ItemFavouritesBloc>(
          create: (context) => container.resolve<ItemFavouritesBloc>(),
        ),
        BlocProvider<PlayerFavouritesBloc>(
          create: (context) => container.resolve<PlayerFavouritesBloc>(),
        ),
        BlocProvider<SettingsBloc>(
          create: (context) => container.resolve<SettingsBloc>(),
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
      // home: DashboardPageHydrated(),
    );
  }
}
