import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> appRouter() => {
      HomeScreen.routeName: (context) => const HomeScreen(),
    };
