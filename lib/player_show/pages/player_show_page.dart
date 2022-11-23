import 'dart:async';
import 'package:eden_xi_tools/player_show/player_details_controller.dart';
import 'package:eden_xi_tools/player_show/views/player_show_appbar.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerShowPage extends HookConsumerWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowPage({
    Key? key,
    required this.playerResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final pageController = usePageController(initialPage: 0);

    final player = ref.watch(
      playerDetailsControllerProvider(playerResult.charname),
    );

    return Scaffold(
      appBar: PlayerShowAppbar(
        playerResult: playerResult,
      ),
      body: player.when(
        data: (player) {
          return RefreshIndicator(
            onRefresh: () => _refreshPage(ref),
            child: PageView(
              onPageChanged: (value) => pageIndex.value = value,
              controller: pageController,
              children: [
                PlayerShowDetails(
                  player: player.details,
                  crafts: player.crafts,
                  equipment: player.equipment,
                  onRefresh: () => _refreshPage(ref),
                ),
                PlayerShowAuctionHouse(
                  items: player.auctionHouseItems,
                  onRefresh: () => _refreshPage(ref),
                ),
                PlayerShowBazaar(
                  items: player.bazaarItems,
                  onRefresh: () => _refreshPage(ref),
                ),
              ],
            ),
          );
        },
        error: (_, __) => CenteredMessage(
          "Could not load player, please try again later",
        ),
        loading: () => CenteredLoader(),
      ),
      bottomNavigationBar: PlayerShowNavigationBar(
        currentIndex: pageIndex.value,
        onTap: (index) {
          pageIndex.value = index;
          pageController.jumpToPage(index);
        },
      ),
    );
  }

  Future<void> _refreshPage(WidgetRef ref) {
    ref.invalidate(playerDetailsControllerProvider);

    return ref.read(
      playerDetailsControllerProvider(playerResult.charname).future,
    );
  }
}
