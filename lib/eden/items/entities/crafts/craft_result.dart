import 'package:freezed_annotation/freezed_annotation.dart';

part 'craft_result.freezed.dart';
part 'craft_result.g.dart';

@freezed
class CraftResult with _$CraftResult {
  factory CraftResult({
    required int count,
    required int id,
    required String name,
    required String type,
  }) = _CraftResult;

  factory CraftResult.fromJson(Map<String, dynamic> json) =>
      _$CraftResultFromJson(json);
}
