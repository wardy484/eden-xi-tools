import 'package:freezed_annotation/freezed_annotation.dart';

part 'yell.freezed.dart';
part 'yell.g.dart';

@freezed
class Yell with _$Yell {
  factory Yell(
    int date,
    String speaker,
    String message,
  ) = _Yell;

  factory Yell.fromJson(Map<String, dynamic> json) => _$YellFromJson(json);
}
