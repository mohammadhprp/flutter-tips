import 'package:flutter/material.dart';

import '../../_tips/tips_export.dart';
import '../expansion/expansion_card.dart';
import '../expansion/expansion_card_items.dart';

class TipsView extends StatelessWidget {
  const TipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ExpansionCard(
          title: 'Extensions',
          initiallyExpanded: true,
          items: [
            ExpansionCardItem(
              title: 'Color Hex',
              description: 'Convert color hex to Color',
              routeName: ColorHexScreen.routeName,
            ),
          ],
        )
      ],
    );
  }
}
