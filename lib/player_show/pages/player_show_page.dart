import 'dart:async';
import 'package:eden_xi_tools/player_show/player_details_controller.dart';
import 'package:eden_xi_tools/player_show/views/player_show_appbar.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerShowPage extends StatefulHookConsumerWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowPage({
    Key? key,
    required this.playerResult,
  }) : super(key: key);

  @override
  _PlayerShowPageState createState() => _PlayerShowPageState();
}

class _PlayerShowPageState extends ConsumerState<PlayerShowPage> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);

    final player = ref.watch(
      playerDetailsControllerProvider(widget.playerResult.charname),
    );

    return Scaffold(
      appBar: PlayerShowAppbar(
        playerResult: widget.playerResult,
      ),
      body: player.when(
        data: (player) {
          return RefreshIndicator(
            onRefresh: _refreshPage,
            child: PageView(
              onPageChanged: (value) => setState(
                () => _selectedPageIndex = value,
              ),
              controller: pageController,
              children: [
                PlayerShowDetails(
                  player: player.details,
                  crafts: player.crafts,
                  equipment: player.equipment,
                  onRefresh: _refreshPage,
                ),
                PlayerShowAuctionHouse(
                  items: player.auctionHouseItems,
                  onRefresh: _refreshPage,
                ),
                PlayerShowBazaar(
                  items: player.bazaarItems,
                  onRefresh: _refreshPage,
                ),
              ],
            ),
          );
        },
        error: (_, __) =>
            CenteredMessage("Could not load player, please try again later"),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
      bottomNavigationBar: PlayerShowNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          setState(() => _selectedPageIndex = index);

          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Future<void> _refreshPage() {
    ref.invalidate(playerDetailsControllerProvider);

    return ref.read(
      playerDetailsControllerProvider(widget.playerResult.charname).future,
    );
  }
}
