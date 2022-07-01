import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage(
      {Key? key, required this.categoryId, required this.categoryTitle})
      : super(key: key);

  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(meal: categoryMeals[index]);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
