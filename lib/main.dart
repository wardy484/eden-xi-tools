// ignore: unused_import
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:eden_xi_tools/dashboard/pages/dashboard_page.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/registrys/app_registry.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String oldPath = (await getTemporaryDirectory()).path;
  String newPath = (await getApplicationDocumentsDirectory()).path;

  try {
    var file = await io.File("$oldPath/hydrated_box.hive");

    if (file.existsSync()) {
      file.renameSync("$newPath/hydrated_box.hive");
    }
  } catch (_) {}

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  KiwiContainer container = KiwiContainer();
  AppRegistry().register();

  runApp(
    ProviderScope(
      child: MultiBlocProvider(
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
    ),
  );
}

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Widget page = SplashPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eden Tools",
      home: FutureBuilder(
        future: Future.wait([
          Firebase.initializeApp(),
          Future.delayed(Duration(seconds: 1)),
        ]),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            page = DashboardPage();
          }

          return AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: page,
          );
        },
      ),
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

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "icon_simple.png",
              color: Colors.white,
              width: 120,
              height: 120,
            ),
            SizedBox(height: 50),
            Text(
              "Eden XI Tools",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
