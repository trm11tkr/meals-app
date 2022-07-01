import 'package:flutter/material.dart';

class MealBelowItem extends StatelessWidget {
  const MealBelowItem({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
