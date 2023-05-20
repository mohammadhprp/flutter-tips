import 'package:flutter/material.dart';

class ExpansionCard extends StatelessWidget {
  final String title;
  final List<Widget> items;
  final bool initiallyExpanded;
  const ExpansionCard({
    super.key,
    required this.title,
    required this.items,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(title),
            initiallyExpanded: initiallyExpanded,
            children: [
              const Divider(indent: 15, endIndent: 15),
              Column(children: items),
            ],
          ),
        ),
      ),
    );
  }
}
