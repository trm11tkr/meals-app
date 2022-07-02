import 'package:flutter/material.dart';


import '../models/category.dart';
import '../models/meal.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              meal: categoryMeals[index],
              currentCategoryId: category.id,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
