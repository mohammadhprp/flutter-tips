import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/app_router.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tips and Components',
      theme: FlexThemeData.light(
        useMaterial3: true,
        scheme: FlexScheme.blueM3,
        textTheme: GoogleFonts.nunitoSansTextTheme(),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        scheme: FlexScheme.blueM3,
        textTheme: GoogleFonts.nunitoSansTextTheme(),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: appRouter(),
    );
  }
}
