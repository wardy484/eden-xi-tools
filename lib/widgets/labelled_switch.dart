import 'package:flutter/material.dart';

class LabelledSwitch extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool value) onChanged;

  const LabelledSwitch({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
