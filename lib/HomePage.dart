import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getmyshittogether/bloc/bloc.dart';
import 'package:getmyshittogether/widgets/bottom_loader.dart';
import 'package:getmyshittogether/widgets/search_result_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchBloc = BlocProvider.of<SearchBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (String value) {
            if (value != null && value != "") {
              _searchBloc.add(SearchRequested(itemName: value));
            }
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter a search term',
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchInitial) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state is SearchFailure) {
                return Center(
                  child: Text(
                      "Failed to fetch search results, please try again later."),
                );
              }

              if (state is SearchSuccess) {
                if (state.results.total < 1) {
                  return Center(
                    child: Text("No results for your search"),
                  );
                }

                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return index >= state.results.items.length
                        ? BottomLoader()
                        : SearchResultWidget(item: state.results.items[index]);
                  },
                  itemCount: state.hasReachedMax
                      ? state.results.items.length
                      : state.results.items.length + 1,
                  controller: _scrollController,
                );
              }
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _searchBloc.add(SearchFetched());
    }
  }
}
