import 'package:eden_xi_tools/eden/player/entities/player_jobs/player_jobs.dart';
import 'package:eden_xi_tools/eden/player/entities/player_ranks/player_ranks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  factory Player({
    required String avatar,
    required int id,
    required String jobString,
    required PlayerJobs jobs,
    required int mentor,
    required String name,
    required int nameflags,
    required int nation,
    required PlayerRanks ranks,
    required String title,
    required int online,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
