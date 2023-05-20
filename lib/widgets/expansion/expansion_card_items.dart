import 'package:flutter/material.dart';

class ExpansionCardItem extends StatelessWidget {
  final String title;
  final String description;
  final String routeName;

  const ExpansionCardItem({
    super.key,
    required this.title,
    required this.description,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      onTap: () => Navigator.of(context).pushNamed(routeName),
    );
  }
}
