import 'package:eden_xi_tools/eden/player/entities/player_jobs/player_jobs.dart';
import 'package:eden_xi_tools/eden/player/entities/player_crafts/player_crafts.dart';
import 'package:eden_xi_tools/player_show/views/widgets/player_profile_skill_label.dart';
import 'package:flutter/material.dart';

class PlayerFactory {
  static List<Widget> makeCraftsList(PlayerCrafts crafts) {
    return [
      PlayerProfileSkillLabel(name: "Fishing", level: crafts.fishing),
      PlayerProfileSkillLabel(name: "Woodworking", level: crafts.woodworking),
      PlayerProfileSkillLabel(name: "Smithing", level: crafts.smithing),
      PlayerProfileSkillLabel(name: "Goldsmithing", level: crafts.goldsmithing),
      PlayerProfileSkillLabel(name: "Clothcraft", level: crafts.clothcraft),
      PlayerProfileSkillLabel(name: "Leathercraft", level: crafts.leathercraft),
      PlayerProfileSkillLabel(name: "Bonecraft", level: crafts.bonecraft),
      PlayerProfileSkillLabel(name: "Alchemy", level: crafts.alchemy),
      PlayerProfileSkillLabel(name: "Cooking", level: crafts.cooking),
      PlayerProfileSkillLabel(name: "Synergy", level: crafts.synergy),
    ];
  }

  static List<Widget> makeJobsList(PlayerJobs jobs) {
    return [
      PlayerProfileSkillLabel(name: "WAR", level: jobs.war),
      PlayerProfileSkillLabel(name: "MNK", level: jobs.mnk),
      PlayerProfileSkillLabel(name: "WHM", level: jobs.whm),
      PlayerProfileSkillLabel(name: "BLM", level: jobs.blm),
      PlayerProfileSkillLabel(name: "RDM", level: jobs.rdm),
      PlayerProfileSkillLabel(name: "THF", level: jobs.thf),
      PlayerProfileSkillLabel(name: "PLD", level: jobs.pld),
      PlayerProfileSkillLabel(name: "DRK", level: jobs.drk),
      PlayerProfileSkillLabel(name: "BST", level: jobs.bst),
      PlayerProfileSkillLabel(name: "BRD", level: jobs.brd),
      PlayerProfileSkillLabel(name: "RNG", level: jobs.rng),
      PlayerProfileSkillLabel(name: "SAM", level: jobs.sam),
      PlayerProfileSkillLabel(name: "NIN", level: jobs.nin),
      PlayerProfileSkillLabel(name: "DRG", level: jobs.drg),
      PlayerProfileSkillLabel(name: "SMN", level: jobs.smn),
      PlayerProfileSkillLabel(name: "BLU", level: jobs.blu),
      PlayerProfileSkillLabel(name: "COR", level: jobs.cor),
      PlayerProfileSkillLabel(name: "PUP", level: jobs.pup),
      PlayerProfileSkillLabel(name: "DNC", level: jobs.dnc),
      PlayerProfileSkillLabel(name: "SCH", level: jobs.sch),
    ];
  }
}
