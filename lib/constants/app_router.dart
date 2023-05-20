import 'package:flutter/material.dart';

import '../_tips/tips_export.dart';
import '../screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> appRouter() => {
      HomeScreen.routeName: (context) => const HomeScreen(),
      ColorHexScreen.routeName: (context) => const ColorHexScreen(),
    };
