import 'package:flutter/material.dart';

import '../widgets/home/tips_and_components_tab_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tips and Components'),
      ),
      body: const TipsAndComponentsTabView(),
    );
  }
}
