import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_jobs.freezed.dart';
part 'player_jobs.g.dart';

@freezed
class PlayerJobs with _$PlayerJobs {
  factory PlayerJobs({
    @JsonKey(name: 'BLM') required int blm,
    @JsonKey(name: 'BLU') required int blu,
    @JsonKey(name: 'BRD') required int brd,
    @JsonKey(name: 'BST') required int bst,
    @JsonKey(name: 'COR') required int cor,
    @JsonKey(name: 'DNC') required int dnc,
    @JsonKey(name: 'DRG') required int drg,
    @JsonKey(name: 'DRK') required int drk,
    @JsonKey(name: 'MNK') required int mnk,
    @JsonKey(name: 'NIN') required int nin,
    @JsonKey(name: 'PLD') required int pld,
    @JsonKey(name: 'PUP') required int pup,
    @JsonKey(name: 'RDM') required int rdm,
    @JsonKey(name: 'RNG') required int rng,
    @JsonKey(name: 'SAM') required int sam,
    @JsonKey(name: 'SCH') required int sch,
    @JsonKey(name: 'SMN') required int smn,
    @JsonKey(name: 'THF') required int thf,
    @JsonKey(name: 'WAR') required int war,
    @JsonKey(name: 'WHM') required int whm,
  }) = _PlayerJobs;

  factory PlayerJobs.fromJson(Map<String, dynamic> json) =>
      _$PlayerJobsFromJson(json);
}
