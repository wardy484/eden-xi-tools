import 'package:eden_xi_tools/eden/player/entities/player_jobs/player_jobs.dart';
import 'package:eden_xi_tools/eden/player/entities/player_ranks/player_ranks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
abstract class Player with _$Player {
  factory Player({
    String avatar,
    int id,
    String jobString,
    PlayerJobs jobs,
    int mentor,
    String name,
    int nameFlags,
    int nation,
    PlayerRanks ranks,
    String title,
    int online,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
