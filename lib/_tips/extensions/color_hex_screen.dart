import 'package:flutter/material.dart';

// Extension to convert color hex to Color
extension ColorHex on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    // FF make color's opacity 100%
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

// App colors class
@immutable
class AppColors {
  static Color primary = ColorHex.fromHex('#366ED8');
  static Color primaryOpacity70 = ColorHex.fromHex('#B3366ED8');

  const AppColors._();
}

class ColorHexScreen extends StatelessWidget {
  static const routeName = '/tips/extensions/color-hex';
  const ColorHexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Hex'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Convert color hex to Color',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: AppColors.primary,
                    child: Text(
                      'Primary 100% opacity',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: AppColors.primaryOpacity70,
                    child: Text(
                      'Primary 70% opacity',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
