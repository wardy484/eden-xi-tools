import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  final _minRows = 3;
  final _maxRows = 8;

  SettingsBloc _settingsBloc;

  @override
  void initState() {
    _settingsBloc = BlocProvider.of<SettingsBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: new ListView(
              children: [
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.gavel,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                  title: Text("Max. items"),
                  trailing: SizedBox(
                    width: 80,
                    child: DropdownButton(
                      hint: new Text('Max. players: '),
                      items: _buildDropdownOptions(),
                      value: state.settings.maxItemsOnDashboard,
                      onChanged: (value) {
                        _settingsBloc.add(
                          SettingsEvent.saved(
                            state.settings.copyWith(maxItemsOnDashboard: value),
                          ),
                        );
                      },
                      isExpanded: true,
                      underline: Text(""),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.people,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                  title: Text("Max. players"),
                  trailing: SizedBox(
                    width: 80,
                    child: DropdownButton(
                      hint: new Text('Max. players: '),
                      items: _buildDropdownOptions(),
                      value: state.settings.maxPlayersOnDashboard,
                      onChanged: (value) {
                        _settingsBloc.add(
                          SettingsEvent.saved(
                            state.settings
                                .copyWith(maxPlayersOnDashboard: value),
                          ),
                        );
                      },
                      isExpanded: true,
                      underline: Text(""),
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildDropdownOptions() {
    List<DropdownMenuItem<int>> options = [];

    for (var i = _minRows; i < _maxRows + 1; i++) {
      options.add(
        DropdownMenuItem<int>(
          child: new Text(i.toString()),
          value: i,
        ),
      );
    }

    return options;
  }
}
