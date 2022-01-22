import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  final _minRows = 3;
  final _maxRows = 8;

  late SettingsBloc _settingsBloc;

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
              padding: EdgeInsets.symmetric(vertical: 8),
              children: [
                CustomCard(
                  title: "Dashboard settings",
                  body: Column(
                    children: [
                      ListTile(
                        title: Text("Max. items"),
                        trailing: SizedBox(
                          width: 50,
                          child: DropdownButton(
                            hint: new Text('Max. players: '),
                            items: _buildDropdownOptions(),
                            value: state.settings.maxItemsOnDashboard,
                            onChanged: (int? value) {
                              _settingsBloc.add(
                                SettingsEvent.saved(
                                  state.settings.copyWith(
                                    maxItemsOnDashboard: value ?? 3,
                                  ),
                                ),
                              );
                            },
                            isExpanded: true,
                            underline: Text(""),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Max. players"),
                        trailing: SizedBox(
                          width: 50,
                          child: DropdownButton(
                            hint: new Text('Max. players: '),
                            items: _buildDropdownOptions(),
                            value: state.settings.maxPlayersOnDashboard,
                            onChanged: (int? value) {
                              _settingsBloc.add(
                                SettingsEvent.saved(
                                  state.settings.copyWith(
                                    maxPlayersOnDashboard: value ?? 3,
                                  ),
                                ),
                              );
                            },
                            isExpanded: true,
                            underline: Text(""),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  List<DropdownMenuItem<int>> _buildDropdownOptions() {
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
