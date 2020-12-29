import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getmyshittogether/eden/items/repositories/ItemRepository.dart';
import 'package:getmyshittogether/item_show/item_show_bloc.dart';
import 'package:getmyshittogether/item_search/pages/item_search_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:getmyshittogether/item_search/item_search.dart';
import 'package:getmyshittogether/item_search/item_search_bloc.dart';

void main() {
  ItemRepository itemRepository = ItemRepository(http.Client());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ItemSearchBloc>(
          create: (context) => ItemSearchBloc(httpClient: http.Client())
            ..add(InitiateItemSearch()),
        ),
        BlocProvider<ItemShowBloc>(
          create: (context) => ItemShowBloc(itemRepository: itemRepository),
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Eden Tools"),
        ),
        body: ItemSearchPage(),
      ),
    );
  }
}
