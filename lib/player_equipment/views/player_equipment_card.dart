import 'package:cached_network_image/cached_network_image.dart';
import 'package:eden_xi_tools/item_show/pages/item_show_page.dart';
import 'package:eden_xi_tools/player_equipment/bloc/player_equipment_bloc.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recase/recase.dart';

class PlayerEquipmentCard extends StatelessWidget {
  final String playerName;

  const PlayerEquipmentCard({
    Key? key,
    required this.playerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Equipment",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: BlocBuilder<PlayerEquipmentBloc, PlayerEquipmentState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => CenteredLoader(),
                loaded: (PlayerEquipment equipment) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EquipmentSlot(equipment: equipment.main),
                          EquipmentSlot(equipment: equipment.sub),
                          EquipmentSlot(equipment: equipment.ranged),
                          EquipmentSlot(equipment: equipment.ammo),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EquipmentSlot(equipment: equipment.head),
                          EquipmentSlot(equipment: equipment.neck),
                          EquipmentSlot(equipment: equipment.ear1),
                          EquipmentSlot(equipment: equipment.ear2),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EquipmentSlot(equipment: equipment.body),
                          EquipmentSlot(equipment: equipment.hands),
                          EquipmentSlot(equipment: equipment.ring1),
                          EquipmentSlot(equipment: equipment.ring2),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EquipmentSlot(equipment: equipment.back),
                          EquipmentSlot(equipment: equipment.waist),
                          EquipmentSlot(equipment: equipment.legs),
                          EquipmentSlot(equipment: equipment.feet),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class EquipmentSlot extends StatelessWidget {
  final PlayerEquipmentSlot equipment;

  const EquipmentSlot({
    Key? key,
    required this.equipment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (equipment.name == null) {
      return CachedNetworkImage(
        imageUrl:
            "https://static.ffxiah.com/images/eq${equipment.equipSlotId + 1}.gif",
        fit: BoxFit.fill,
        width: 50,
        height: 50,
      );
    }

    var name = (new ReCase(equipment.name!)).titleCase;

    return Tooltip(
      message: name,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemShowPage(
                item: SearchResultItem(
                  id: equipment.itemId!,
                  name: name,
                  sort: equipment.name!,
                  key: equipment.name!,
                ),
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://www.ffxiah.com/images/equip_box.gif",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: ItemIcon(
            id: equipment.itemId!,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}
