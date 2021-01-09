import 'package:eden_xi_tools/dashboard/pages/dashboard_page.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/registrys/app_registry.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:kiwi/kiwi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();

  KiwiContainer container = KiwiContainer();
  AppRegistry().register();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesBloc<SearchResultItem>>(
          create: (context) => FavouritesBloc<SearchResultItem>(),
        ),
        BlocProvider<FavouritesBloc<PlayerSearchResultItem>>(
          create: (context) => FavouritesBloc<PlayerSearchResultItem>(),
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
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.grey[200],
        cardTheme: CardTheme(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 5,
        ),
        dividerTheme: DividerThemeData(space: 0),
      ),
    );
  }
}
