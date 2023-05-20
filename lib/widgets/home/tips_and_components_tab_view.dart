import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'components_view.dart';
import 'tips_view.dart';

class TipsAndComponentsTabView extends StatelessWidget {
  const TipsAndComponentsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          indicatorWeight: 1,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: Theme.of(context).textTheme.titleMedium,
          unselectedLabelColor: AppColors.grey400,
          tabs: const [
            Text('Tips'),
            Text('Components'),
          ],
        ),
        body: const TabBarView(
          children: [
            TipsView(),
            ComponentsView(),
          ],
        ),
      ),
    );
  }
}
