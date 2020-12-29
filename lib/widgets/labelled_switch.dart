import 'package:flutter/material.dart';

class LabelledSwitch extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool value) onChanged;

  const LabelledSwitch({
    Key key,
    this.label,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Switch(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
