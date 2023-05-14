import 'package:flutter/material.dart';

import '../widgets/list_of_tips_and_components_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tips and Components'),
      ),
      body: const ListOfTipsAndComponentsView(),
    );
  }
}
