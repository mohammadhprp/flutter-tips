import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../_tips/extensions/color_hex_screen.dart';

class SegmentedButton extends HookWidget {
  final ValueChanged<String> onChanged;
  const SegmentedButton({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final list = useState([true, false, false]);
    final titles = ['songs', 'albums', 'podcasts'];

    final width = MediaQuery.of(context).size.width;

    return ToggleButtons(
      isSelected: list.value,
      textStyle: Theme.of(context).textTheme.titleSmall,
      borderColor: ColorHex.fromHex('#43493E'),
      color: Colors.white,
      selectedColor: Colors.white,
      fillColor: ColorHex.fromHex('#43493E'),
      borderRadius: BorderRadius.circular(20),
      constraints: BoxConstraints(
        minHeight: 45,
        minWidth: (width - 45) / list.value.length,
      ),
      children: titles
          .map(
            (title) => Text(title.toUpperCase()),
          )
          .toList(),
      onPressed: (int index) {
        // The button that is tapped is set to true,
        // and the others to false
        list.value = List<bool>.generate(
          list.value.length,
          (i) => i == index,
        );

        onChanged.call(titles[index]);
      },
    );
  }
}
