import 'package:equatable/equatable.dart';

class BazaarItem extends Equatable {
  final int bazaar;
  final String charname;
  final int onlineFlag;

  const BazaarItem({this.bazaar, this.charname, this.onlineFlag});

  @override
  List<Object> get props => [bazaar, charname, onlineFlag];

  @override
  String toString() =>
      'Bazaar item { bazaar: $bazaar, charname: $charname, onlineFlag: $onlineFlag }';
}
