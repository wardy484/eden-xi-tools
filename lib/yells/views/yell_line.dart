import 'package:eden_xi_tools/eden/misc/entities/yell/yell.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const nameStyle = TextStyle(color: const Color(0xFF77AAFF));
const closeBrace = TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
const openBrace =
    TextStyle(color: const Color(0xFF90ee90), fontWeight: FontWeight.bold);

class YellLine extends StatelessWidget {
  final Yell yell;

  const YellLine({
    Key? key,
    required this.yell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textScaleFactor: 1.05,
      text: TextSpan(
        children: [
          TextSpan(
            text: "[${formatDate(yell.date)}] ",
            style: nameStyle,
          ),
          TextSpan(
            text: yell.speaker,
            style: nameStyle,
          ),
          TextSpan(text: ": "),
          ...yell.message.split("").map((e) {
            TextStyle? style;

            if (e == "»") {
              style = closeBrace;
              e = "}";
            }

            if (e == "«") {
              style = openBrace;
              e = "{";
            }

            return TextSpan(text: e, style: style);
          }).toList(),
        ],
      ),
    );
  }

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    DateFormat formatter = DateFormat.Hms();

    return formatter.format(date);
  }
}
