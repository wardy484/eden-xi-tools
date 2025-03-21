import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final Function(String value) onChange;
  final Function onClear;

  const SearchField({
    Key? key,
    required this.onChange,
    required this.onClear,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  FocusNode _focus = new FocusNode();
  TextEditingController _controller = TextEditingController();
  bool _showClearButton = false;
  String textValue = '';

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).inputDecorationTheme.focusColor,
      focusNode: _focus,
      controller: _controller,
      onChanged: (String value) {
        if (value != "") {
          widget.onChange(value.trim());
          setState(() {
            _showClearButton = true;
            textValue = value;
          });
        } else {
          _clearField();
        }
      },
      decoration: _getDecoration(),
    );
  }

  _clearField() {
    setState(() {
      _showClearButton = false;
      textValue = '';
    });

    widget.onClear();
  }

  void _onFocusChange() {
    setState(() {
      if (textValue != '') {
        _showClearButton = !_showClearButton;
      }
    });
  }

  InputDecoration _getDecoration() {
    return InputDecoration(
      prefixIcon: Icon(Icons.search),
      hintText: 'Enter a search term',
      contentPadding: EdgeInsets.only(
        top: 16,
        bottom: 13,
        left: 10,
        right: 10,
      ),
      // contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      suffixIcon: AnimatedOpacity(
        opacity: _showClearButton ? 1.0 : 0.0,
        duration: Duration(milliseconds: 200),
        child: IconButton(
          onPressed: () {
            _controller.clear();
            _clearField();
          },
          icon: Icon(Icons.clear),
        ),
      ),
    );
  }
}
