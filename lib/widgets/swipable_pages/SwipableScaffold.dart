import 'package:eden_xi_tools/widgets/swipable_pages/swipable_bottom_bar.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:flutter/material.dart';

class SwipableScaffold extends StatefulWidget {
  final List<Widget> pages;
  final AppBar appBar;
  final List<BottomNavigationBarItem> tabs;
  final int initialPage;
  final bool resetOnPop;

  SwipableScaffold({
    Key key,
    @required this.pages,
    @required this.appBar,
    @required this.tabs,
    this.initialPage = 0,
    this.resetOnPop = false,
  }) : super(key: key);

  @override
  _SwipableScaffoldState createState() => _SwipableScaffoldState();
}

class _SwipableScaffoldState extends State<SwipableScaffold> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: widget.appBar,
        body: SwipablePages(
          pages: widget.pages,
          index: _selectedIndex,
          onSwipe: _setSelectedIndex,
        ),
        bottomNavigationBar: SwipableBottomBar(
          tabs: widget.tabs,
          index: _selectedIndex,
          onTap: _setSelectedIndex,
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (!widget.resetOnPop) return true;

    if (_selectedIndex != 0) {
      _setSelectedIndex(0);
      return false;
    }

    return true;
  }

  _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
