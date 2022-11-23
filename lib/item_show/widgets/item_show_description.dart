import 'package:eden_xi_tools/item_show/widgets/stack_toggle_button.dart';
import 'package:eden_xi_tools/widgets/custom_card/custom_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemShowDescription extends StatelessWidget {
  final Item item;
  final int currentPageIndex;

  const ItemShowDescription({
    Key? key,
    required this.item,
    required this.currentPageIndex,
  }) : super(key: key);

  String charToElement(String char) {
    switch (char) {
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/2/2c/Trans_Fire.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/c/ca/Trans_Ice.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/e/e6/Trans_Wind.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/7/7d/Trans_Earth.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/5/5c/Trans_Lightning.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/0/0a/Trans_Water.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/a/a2/Trans_Light.gif";
      case '':
        return "https://vignette.wikia.nocookie.net/ffxi/images/d/de/Trans_Dark.gif";
      default:
        return char;
    }
  }

  List<InlineSpan> splitOnSpecialCharacters(String text) {
    final elements = ["", "", "", "", "", "", "", ""];
    final List<InlineSpan> render = [];

    for (int i = 0; i < text.length; i++) {
      bool isElement = false;

      for (final element in elements) {
        if (text[i].contains(element)) {
          render.add(
            WidgetSpan(child: Image.network(charToElement(element))),
          );
          isElement = true;
          break;
        }
      }

      if (!isElement) {
        render.add(TextSpan(text: text[i]));
      }
    }

    return render;
  }

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
                StackToggleButton(itemKey: item.key),
              ],
            ),
          ),
          body: Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: splitOnSpecialCharacters(item.desc),
                    ),
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
