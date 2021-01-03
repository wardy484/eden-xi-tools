import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_jobs.freezed.dart';
part 'player_jobs.g.dart';

@freezed
abstract class PlayerJobs with _$PlayerJobs {
  factory PlayerJobs({
    @JsonKey(name: 'BLM') int blm,
    @JsonKey(name: 'BLU') int blu,
    @JsonKey(name: 'BRD') int brd,
    @JsonKey(name: 'BST') int bst,
    @JsonKey(name: 'COR') int cor,
    @JsonKey(name: 'DNC') int dnc,
    @JsonKey(name: 'DRG') int drg,
    @JsonKey(name: 'DRK') int drk,
    @JsonKey(name: 'MNK') int mnk,
    @JsonKey(name: 'NIN') int nin,
    @JsonKey(name: 'PLD') int pld,
    @JsonKey(name: 'PUP') int pup,
    @JsonKey(name: 'RDM') int rdm,
    @JsonKey(name: 'RNG') int rng,
    @JsonKey(name: 'SAM') int sam,
    @JsonKey(name: 'SCH') int sch,
    @JsonKey(name: 'SMN') int smn,
    @JsonKey(name: 'THF') int thf,
    @JsonKey(name: 'WAR') int war,
    @JsonKey(name: 'WHM') int whm,
  }) = _PlayerJobs;

  factory PlayerJobs.fromJson(Map<String, dynamic> json) =>
      _$PlayerJobsFromJson(json);
}
