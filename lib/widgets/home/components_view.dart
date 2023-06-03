import 'package:flutter/material.dart';

import '../../_components/components_export.dart';
import '../expansion/expansion_card.dart';
import '../expansion/expansion_card_items.dart';

class ComponentsView extends StatelessWidget {
  const ComponentsView({super.key});

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
              routeName: DownloadScreen.routeName,
            ),
          ],
        )
      ],
    );
  }
}
