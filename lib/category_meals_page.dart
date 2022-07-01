import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage(
      {Key? key, required this.categoryId, required this.categoryTitle})
      : super(key: key);
      
  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          categoryId,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
