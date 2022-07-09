import 'package:eden_xi_tools/item_auction_house/bloc/item_auction_house_bloc.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools/widgets/labelled_switch.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemShowDescription extends StatelessWidget {
  final Item item;
  final int currentPageIndex;

  const ItemShowDescription({
    Key? key,
    required this.item,
    required this.currentPageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        CustomCard(
          header: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Description",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                StackToggleButton(currentPageIndex: currentPageIndex)
              ],
            ),
          ),
          body: Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    item.trimmedDesc,
                    softWrap: true,
                    maxLines: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StackToggleButton extends StatelessWidget {
  final int currentPageIndex;

  const StackToggleButton({
    Key? key,
    required this.currentPageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemAuctionHouseBloc, ItemAuctionHouseState>(
      builder: (context, state) {
        // TODO don't show this is current tab is not "Auction House", it looks shit
        return LabelledSwitch(
          label: "Stacked:",
          value: state.stacked,
          onChanged: (value) => _onChanged(context, value),
        );
      },
    );
  }

  _onChanged(context, bool value) {
    BlocProvider.of<ItemAuctionHouseBloc>(context)
        .add(ItemAuctionHouseStackToggled(stacked: value));
  }
}
