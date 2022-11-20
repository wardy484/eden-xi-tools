// ignore: unused_import
import 'package:eden_xi_tools/firebase_options.dart';
import 'package:eden_xi_tools/dashboard/pages/dashboard_page.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  HydratedStorage storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://50a610cfddde4532828b206bac7a8d3f@o1207946.ingest.sentry.io/4504182030073856';
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => HydratedBlocOverrides.runZoned(
      () => runApp(
        ProviderScope(
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ItemFavouritesBloc>(
                create: (context) => ItemFavouritesBloc(),
              ),
              BlocProvider<PlayerFavouritesBloc>(
                create: (context) => PlayerFavouritesBloc(),
              ),
              BlocProvider<SettingsBloc>(
                create: (context) => SettingsBloc(),
              ),
            ],
            child: App(),
          ),
        ),
      ),
      storage: storage,
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Widget page = SplashPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Eden Tools",
          home: FutureBuilder(
            future: Future.wait([
              Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
              ),
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
            scaffoldBackgroundColor: Colors.grey[200],
            cardTheme: CardTheme(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            ),
            inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 5,
            ),
            dividerTheme: DividerThemeData(space: 0),
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            cardTheme: CardTheme(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            inputDecorationTheme: InputDecorationTheme(
              // fillColor: Colors.white,
              // filled: true,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),

              iconColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.grey[500],
            ),
            dividerTheme: DividerThemeData(space: 0),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 5,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
            ),
          ),
          themeMode: state.maybeWhen(
            loaded: (settings) =>
                settings.darkMode ? ThemeMode.dark : ThemeMode.light,
            orElse: () => ThemeMode.light,
          ),
        );
      },
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
