import 'package:intl/intl.dart';

extension NumberParsing on int {
  String toGil() {
    NumberFormat formatter = NumberFormat("###,###,###,###g");
    return formatter.format(this);
  }
  // ···
}
