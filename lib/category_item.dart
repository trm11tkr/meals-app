import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './category_meals_page.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key, required this.id, required this.title, required this.color})
      : super(key: key);
  final String id;
  final String title;
  final Color color;

  void _selectCategory(BuildContext context) {
    context.go('/category_meals?id=$id&title=$title');

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
