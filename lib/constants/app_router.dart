import 'package:flutter/material.dart';

import '../_components/components_export.dart';
import '../_tips/tips_export.dart';
import '../screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> appRouter() => {
      HomeScreen.routeName: (context) => const HomeScreen(),
      // Tips
      ColorHexScreen.routeName: (context) => const ColorHexScreen(),
      // Components
      DownloadScreen.routeName: (context) => const DownloadScreen(),
    };
