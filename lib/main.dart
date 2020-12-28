import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getmyshittogether/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:getmyshittogether/bloc/bloc.dart';
import 'package:getmyshittogether/bloc/search_bloc.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Eden Tools",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Eden Tools"),
          ),
          body: BlocProvider(
            create: (context) =>
                SearchBloc(httpClient: http.Client())..add(SearchFetched()),
            child: HomePage(),
          )),
    );
  }
}
